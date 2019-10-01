from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection

data = dict()
# Create your views here.
def index(request):
    global data
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from company where c_id = %s",[request.session["id"]])
        data = company_data(list(cursor.fetchall())[0])
    #return render(request, "company_dashboard.html", data)
    return render(request, "new_company_dashboard.html", data)
    #return HttpResponse("Hello Comapny!")

def company_data(data) :
    return {
        "name" : data[1],
        "address" : data[2],
        "alternative_email_id" : data[4],
        "contact" : data[5],
        "descp" : data[6],
    }

def company_notifications(request):
    return render(request, "company_notifications.html", data)

def company_post_jobs(request):
    return render(request, "company_post_jobs.html", data)

def company_view_applicants(request):
    return render(request, "company_view_applicants.html", data)

def company_view_jobs(request):
    return render(request, "company_view_jobs.html", data)

def company_statistics(request):
    return render(request, "company_statistics.html", data)

def company_profile(request):
    return render(request, "company_profile.html", data)

def test(request):
    return render(request, "company_test.html", {})