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
        "email" : data[3],
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

def company_view_applicants(request,id):
    """ Renders applicants for a particular job """
    global data
    job_id = int(id)
    #data["applicants"]["job_details"] = data[]
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from jobs WHERE j_id = {}".format(job_id))
    return render(request, "view_applicants.html", data)

def company_view_jobs(request):
    """ Renders view for editing a particular job """
    dict1 = dict()
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from jobs where c_id = %s and last_date >= %s",[request.session['id'],date.today()])
        jobs = list(cursor.fetchall())
    # Looping through all list of active jobs
    for job in jobs:
        var1 = eval(job[2])
        temp = dict()
        temp["0"] = {
            "job_details" : {
                "designation": var1["designation"],
                "description": var1["description"],
                "no_of_vacancies": job[3],
                "last_date": str(job[5])
            }
        }
        temp["1"] = {
            "requirements" : {
                "skills" : var1["skills"],
                "qualification" : var1["qualification"],
                "experience" : var1["experience"],
            }
        }
        with connection.cursor() as cursor:
            cursor.execute("SELECT * from questions where c_id = %s and j_id = %s",[request.session['id'],job[0]])
            questions = list(cursor.fetchone())
        # return HttpResponse(questions[0])
        
        knockouts = eval(questions[3])
        questions1 = eval(questions[2])
        
        # Looping through the list of array of Knockout_questions
        temp1_dict = dict()
        for c,knockout in enumerate(knockouts):
            # knockout = eval(knockout)
            temp1_dict[c] = {
                "question" : knockout[0],
                "no_of_options" : knockout[1],
                "options" : knockout[2],
                "marks" : knockout[3],
            }
        temp["2"] = {
            "knockout" : temp1_dict
        }

        # Looping through Questions
        temp1_dict.clear()
        temp_arr = tuple(questions1.items()) #Converting all the questions details into suitable format
        arr = []

        for a in temp_arr:
            type1 = a[0]    #For getting type
            ques_arr = list(a[1])   #For getting Questions 
            for b in ques_arr:
                ques = b
                opt = eval(str(list(b.items())[0][1][0][0]))
                ans = str(list(b.items())[0][1][0][1])
                marks = str(list(b.items())[0][1][1])
                tp_dict10 = {
                    "type" : type1,
                    "question" : ques,
                    "options" : opt,
                    "answer" : ans,
                    "marks" : marks
                }
                arr.append(tp_dict10)
        temp["3"] = {
            "questions" : arr
        }
        # return HttpResponse(temp.items()) 

        # temp_list1 = list(temp_arr[0][1])
        # # return HttpResponse(temp_list1)
        # for a in temp_list1:
        #     var = list(a.items())[0] 
        #     q1 = var[0]
        #     opt = var[1][0][0]
        #     ans = var[1][0][1]
        #     marks = var[1][1]
        #     tp_dict1 = {

        #     }
        # return HttpResponse(str(list(temp_list1[0].items())[0][1][0][0]))
        # temp2_dict = dict()
        # for a in temp_arr:
        #     for b in a[1]:
        #         pass
        # return HttpResponse(len(temp_arr))
        # for c,quest in enumerate(temp_arr):
        #     temp1_dict[c] = {
        #         "type" : quest[0],
        #         "question" : "",
        #         "options" : [],
        #         "answer" : "",
        #         "marks" : [],
        #     }

    # return HttpResponse(temp.items()) #Final dictionary data
    return render(request, "company_view_jobs.html", temp)

def company_statistics(request):
    """ Renders view for company statistics """
    return render(request, "company_statistics.html", data)

def company_profile(request):
    """ Renders view for editing profile """
    return render(request, "company_profile.html", data)

def test(request):
    """ Testing codes """
    return render(request, "company_test.html", {})