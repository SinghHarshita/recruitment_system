from django.shortcuts import render
from django.http import HttpResponse

from django.contrib.sessions.models import Session
from django.contrib.auth.models import User
from django.contrib.auth import logout

from django.db import connection
from django.urls import reverse
from django.contrib import messages
from django.shortcuts import redirect
from .drive_actions import quickstart as qk

# Create your views here .........
def index(request):
    return HttpResponse("HireSight Welcomes You!")

def details(request,**kwargs):
    # return HttpResponse("<h2>" + str(request.session.items()) + "</h2>")

    if request.session.get('data'):
        data = request.session['data']
        data['email'] = request.user.email
        request.session['data'] = data
        request.session.modified = True
        user = data['user']
        # return HttpResponse("<h2>" + str(data) + "</h2>")
    else:
        user = None

    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where email_id = %s",[request.user.email])
        row1 = list(cursor.fetchall())
        cursor.execute("SELECT * from company where email_id = %s",[request.user.email])
        row2 = list(cursor.fetchall())
        if(len(row1) == 1 or len(row2) == 1):
            return redirect(auth_user)
        else:
            if(user == 'Company'):
                sql = "INSERT into company(name,address,email_id,contact) values ('{}','{}','{}','{}')".format(data['name'],data['address'],data['email'],data['phone'])
                
            elif(user == "Applicant"):
                dob = data['dob']
                dob = dob.split('/')
                if(len(dob) != 3):    
                    dob = dob[0].split('-')
                    dob = dob[2] + '-' + dob[0] + '-' + dob[1]
                    data['dob'] = dob
                else:            
                    dob = dob[2] + '-' + dob[0] + '-' + dob[1]
                    data['dob'] = dob
                # return HttpResponse("<h2>" + str(dob) + "</h2>")
                sql = "INSERT into user(full_name,fname,lname,email_id,gender,date_of_birth,phone,address)values('{}','{}','{}','{}','{}','{}','{}','{}')".format(data['full_name'],data['fname'],data['lname'],data['email'],data['gender'],data['dob'],data['phone'],data['address'])
            else:
                return redirect("/")
            # return HttpResponse(sql)
            cursor.execute(sql)
            
            try:
                del request.session['data']
            except:
                pass
            
            # request.session.modified = True
            if(user == 'Company'):
                request.session['email'] = request.user.email
                cursor.execute("SELECT * from company where email_id = %s",[request.user.email])
                temp = list(cursor.fetchall())[0]
                request.session['id'] = temp[0]
                return redirect('Company:company_dashboard')
            elif(user == 'Applicant'):
                request.session['email'] = request.user.email
                cursor.execute("SELECT * FROM user where email_id = %s",[request.user.email])
                temp = list(cursor.fetchall())[0]
                request.session['id'] = temp[0]
                upload_cv(request)
                return redirect('Applicant:applicant_dashboard')
            else:
                return redirect('/')

def auth_user(request):
    user = str(request.user.email)
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where email_id = %s",[user])
        row1 = list(cursor.fetchall())
        cursor.execute("SELECT * from company where email_id = %s",[user])
        row2 = list(cursor.fetchall())

    if(len(row1) == 0 and len(row2) == 0):
        # messages.warning(request,"You are Not Registered....")
        return redirect('/',kwargs={msg:"You are Not Registered...."})
    
    if(len(row1)):
        # return HttpResponse(user)
        data = row1[0]
        #print(data)
        request.session["id"] = data[0]
        request.session["email"] = data[4]
        return redirect('Applicant:applicant_dashboard')
    
    else:
        data = row2[0]
        request.session["id"] = data[0]
        request.session["email"] = data[3]
        return redirect('Company:company_dashboard')

def upload_cv(request):
    # return HttpResponse(request.session.items())
    with connection.cursor() as cursor:
        sql = "Select cv_file_path,cv_folder_id from user where u_id = '{}'".format(request.session['id'])
        cursor.execute(sql)
        res = list(cursor.fetchone())
        # return HttpResponse(res)
        if(res[1] is not None):
            sql = "UPDATE user set cv_file_path = 'NULL' where u_id = '{}'".format(request.session['id'])
            cursor.execute(sql)
            qk.delete_file(res[0])

    # with open('Dummy_Resume_' + str(request.session['id']) +'.docx','wb') as fptr:
    #     fptr.write(request.FILES['attach_cv'].read())

    if(res[1] is None):
        file_id,folder_id = qk.main(request.session['id'],request.session['cv_id'],request.session['email'])
    else:
        file_id = qk.update_cv(request.session['cv_id'],res[0],res[1])
        folder_id = res[1] 

    with connection.cursor() as cursor:
        sql = "Update user set cv_file_path = '{}',cv_folder_id = '{}' where u_id = '{}'".format(file_id,folder_id,request.session['id'])
        cursor.execute(sql)


def log_out(request):
    try:
        request.session.clear()
        del request.user
    except:
        pass
    return redirect("/")