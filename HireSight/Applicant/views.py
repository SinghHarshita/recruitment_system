from django.shortcuts import render,redirect
from django.db import connection
from django.http import HttpResponse
import json
# from .drive_actions import quickstart as qk
from django.shortcuts import redirect
from django.contrib.auth import logout

data = {}
# Create your views here.
def index(request):
    global data
    #print(request.session["id"])
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from user where u_id = {}".format(request.session["id"]))
        data = applicant_data(list(cursor.fetchall())[0])
        #data = list(cursor.fetchall())
        #print(data)
    
    
    applicant_history(request)
    return render(request, "dashboard.html", data)


def applicant_data(data) :
    """ Returns JSON of applicant data """
    
    return {
        "name" : data[1],
        "email" : data[4],
        "gender" : data[5],
        "dob" : data[6],
        "phone" : data[7],
        "address" : data[8],
        "following_company" : data[11],
        "cv_file_path" : data[9],
        "cv_updated_at" : data[10],
        "notifications" : data[12],
        "cv_folder_id" : data[13],
    }

def applicant_profile(request):
    return render(request, "applicant_profile.html", data)

def applicant_history(request):
    """ Renders Applicant History """
    global data
    
    history = dict()
    # Fetching history
    with connection.cursor() as cursor :
        cursor.execute("SELECT * FROM application_status WHERE applicant_status LIKE '%{}%'".format(request.session["id"]))
        result = cursor.fetchall()
        #print(result)
        for _ in result:
            # for i in _:
            #     print(i)
            cursor.execute("SELECT * FROM jobs WHERE j_id = {}".format(_[0]))
            status = eval(_[1])
            try:
                temp = int(status[request.session["id"]]["status"])
            except:
                temp = 4
            #print(status[request.session["id"]]["status"])
            s = ""
            if int(temp) == 0:
                s = "Applied"
            elif int(temp) == 1:
                s = "Accepted"
            elif int(temp) == 2:
                s = "Rejected"
            elif int(temp) == 3:
                s = "On Hold"
            else:
                pass
            
            #print(cursor.fetchall())
            res = cursor.fetchall()

            for i in res:
                job_details = eval(i[2])
                #print(job_details)
            
                cursor.execute("SELECT * FROM company WHERE c_id = {}".format(i[1]))
                #print(cursor.fetchall())
                company = cursor.fetchall()[0]
                company_details = {
                    "c_id" : company[0],
                    "c_name" : company[1],
                    "c_address" : company[2],
                    "c_email" : company[3],
                    #"c_alternate_email" : company[4],
                    "c_phone" : company[5],
                    "c_description" : company[6],
                }

                history[_[0]] = {
                    "job_details" : job_details,
                    "status" : s,
                    "company_details" : company_details,
                }
                
    data["jobs"] = history
    #return render(request, "applicant_history.html", data)

# ((8, 20, "{'designation' : 'Department Head','description' : 'descp8', 
# 'skills' : '('Java','SQL','HTML')','experience' : '5years', 'qualification' : '('HSC')'}", 
# 9, 8.0, datetime.date(2019, 11, 12)),)

def browse_jobs_render(request):
    return render(request, "browse_jobs.html", data)

def notifications(request) :
    global data
    #print(data)
    return render(request, "applicant_notifications.html", data)

def test(request):
    global data
    return render(request, "apply_job_q_a.html", data)

def generate_cv(request):
    return render(request, "generate_cv.html")

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

    with open('Dummy_Resume_' + str(request.session['id']) +'.docx','wb') as fptr:
        fptr.write(request.FILES['attach_cv'].read())

    if(res[1] is None):
        file_id,folder_id = qk.main(request.session['id'],request.session['email'])
    else:
        file_id = qk.update_cv(res[0],res[1])
        folder_id = res[1] 

    with connection.cursor() as cursor:
        sql = "Update user set cv_file_path = '{}',cv_folder_id = '{}' where u_id = '{}'".format(file_id,folder_id,request.session['id'])
        cursor.execute(sql)


    return  redirect('/applicant/')

def log_out(request):
    logout(request)
    return redirect('/')
