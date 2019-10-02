from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from datetime import date

data = dict()
# Create your views here.
def index(request):
    """ Renders the company dashboard """
    global data
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from company where c_id = %s",[request.session["id"]])
        data = company_data(list(cursor.fetchall())[0])
    #return render(request, "company_dashboard.html", data)
    jobs(request)
    return render(request, "new_company_dashboard.html", data)
    #return HttpResponse("Hello Comapny!")

def company_data(data) :
    """ Returns company details """
    return {
        "name" : data[1],
        "address" : data[2],
        "alternative_email_id" : data[4],
        "contact" : data[5],
        "descp" : data[6],
    }

def jobs(request):
    """ Returns details of all the jobs as a json """
    
    global data
    jobs = dict()
    with connection.cursor() as cursor:
        """ Fetching job details of all jobs posted by the company """
        cursor.execute("SELECT * FROM jobs WHERE c_id = {}".format(request.session["id"]))

        i = 0
        result = cursor.fetchall()
        for r in result:
            # Checking if applicants exist
            cursor.execute("SELECT * FROM application_status WHERE j_id = {}".format(r[0]))
            a = cursor.fetchall()
            if a != None:
                applicants = 1
            else:
                applicants = 0
            
            # Creating the jobs JSON
            jobs[i] = {
                "j_id" : r[0],
                "requirements" : eval(r[2]),
                "no_of_vacancies" : r[3],
                "threshold_value" : r[4],
                "last_date" : r[5],
                "applicants" : applicants,
                "current_date" : date.today(),
            }

            # Incrementing index
            i+=1

    data["jobs"] = jobs
    #print(jobs)    

def company_notifications(request):
    """ Returns notifications of companies """
    global data
    #return render(request, "company_notifications.html", data)

def company_post_jobs(request):
    """ Renders post jobs form """
    return render(request, "company_post_jobs.html", data)

def company_view_applicants(request):
    """ Renders applicants for a particular job """
    return render(request, "view_applicants.html", data)

def company_view_jobs(request):
    """ Renders view for editing a particular job """
    return render(request, "company_view_jobs.html", data)

def company_statistics(request):
    """ Renders view for company statistics """
    return render(request, "company_statistics.html", data)

def company_profile(request):
    """ Renders view for editing profile """
    return render(request, "company_profile.html", data)

def test(request):
    """ Testing codes """
    return render(request, "company_test.html", {})