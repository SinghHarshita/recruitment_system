from django.shortcuts import render
from django.http import HttpResponse

from django.contrib.sessions.models import Session
from django.contrib.auth.models import User
from django.contrib.auth import logout

from django.db import connection
from django.urls import reverse
from django.contrib import messages
from django.shortcuts import redirect

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
        
        user = request.session['data']['user']
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
            elif(user == "User"):
                dob = data['dob']
                dob = dob.split('/')
                dob = dob[2] + '-' + dob[0] + '-' + dob[1]
                data['dob'] = dob
                # return HttpResponse("<h2>" + str(dob) + "</h2>")
                
                sql = "INSERT into user(full_name,fname,lname,email_id,gender,date_of_birth,phone,address)values('{}','{}','{}','{}','{}','{}','{}','{}')".format(data['full_name'],data['fname'],data['lname'],data['email'],data['gender'],data['dob'],data['phone'],data['address'])
            else:
                return redirect("/")

            cursor.execute(sql)
            
            try:
                del request.session['data']
            except:
                pass
            
            # request.session.modified = True
            if(user == 'Company'):
                request.session['email'] = request.user.email
                return HttpResponse("<h2>" + str(request.session.items()) + "</h2>")
                cursor.execute("SELECT * from company where email_id = %s",[request.user.email])
                temp = list(cursor.fetchall())[0]
                request.session['id'] = temp[0]
                return redirect('Company:company_dashboard')
            elif(user == 'Applicant'):
                request.session['email'] = request.user.email
                cursor.execute("SELECT * FROM user where email_id = %s",[request.user.email])
                temp = list(cursor.fetchall())[0]
                request.session['id'] = temp[0]
                return redirect('Applicant:applicant_dashboard')
            else:
                return redirect('/')

    # return HttpResponse("<h2>Sumedh please make the Form<br>I'm Bored<br>Collect the details like whether he is registering as company or User<br>After that insert the details into the User/Company table</h2>")

def auth_user(request,**kwargs):
    user = str(request.user.email)
    # return HttpResponse(user)
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where email_id = %s",[user])
        row1 = list(cursor.fetchall())
        cursor.execute("SELECT * from company where email_id = %s",[user])
        row2 = list(cursor.fetchall())

    if(len(row1) == 0 and len(row2) == 0):
        # messages.warning(request,"You are Not Registered....")
        return redirect('/',kwargs={'msg':"You are Not Registered...."})
    
    if(len(row1)):
        # return HttpResponse(user)
        data = row1[0]
        #print(data)
        request.session["id"] = data[0]
        request.session["email"] = data[4]
        return redirect('Applicant:applicant_dashboard')
    
    else:
        # return HttpResponse("<h2>" + str(row2) + "</h2>")
        data = row2[0]
        request.session["id"] = data[0]
        request.session["email"] = data[3]
        return redirect('Company:company_dashboard')

def log_out(request):
    logout(request)
    return redirect("/")