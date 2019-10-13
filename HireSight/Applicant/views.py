from django.shortcuts import render
from django.db import connection
from django.http import HttpResponse
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
    return render(request, "dashboard.html", data)


def applicant_data(data) :
    """ Returns JSON of applicant data """
    
    return {
        "name" : data[1],
        "gender" : data[5],
        "dob" : data[6],
        "phone" : data[7],
        "address" : data[8],
        "following_company" : data[11],
        "cv_file_path" : data[9],
        "cv_updated_at" : data[10],
        "notifications" : data[12],
    }

def applicant_profile(request):
    return render(request, "applicant_profile.html", data)

def applicant_history(request):
    return render(request, "applicant_history.html", data)

def browse_jobs_render(request):
    return render(request, "browse_jobs.html", data)

def notifications(request) :
    global data
    #print(data)
    return render(request, "applicant_notifications.html", data)

def log_out(request):
    try :
        request.session.clear()
    except :
        pass
    logout(request)
    return redirect('/')

