from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.db import connection
from datetime import date
from django.contrib.auth import logout
import json

data = dict()
# Create your views here.
def index(request):
    """ Renders the company dashboard """
    try:
        id = request.session['c_id']
    except:
        return redirect('/')

    global data
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from company where c_id = %s",[request.session["c_id"]])
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
        cursor.execute("SELECT * FROM jobs WHERE c_id = {}".format(request.session["c_id"]))

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

def company_view_jobs(request,job_id):
    """ Renders view for editing a particular job """
    dict1 = dict()
    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT * from jobs where c_id = %s and j_id = %s",[request.session['c_id'],job_id])
            jobs = list(cursor.fetchall())
    except:
        return redirect('Company:index')
    # Looping through all list of active jobs
    # final_arr = []
    for job in jobs:
        var1 = eval(job[2])
        temp = dict()
        if(job[5]):
            tp_date = str(job[5]).split('-')
            ls_date = "{}-{}-{}".format(tp_date[1],tp_date[2],tp_date[0])
        else:
            ls_date = "2019-11-30"
        temp["0"] = {
            "job_details" : {
                "designation": var1["designation"],
                "description": var1["description"],
                "no_of_vacancies": job[3],
                "last_date": ls_date
            }
        }
        temp["1"] = {
            "requirements" : {
                "skills" : var1["skills"],
                "qualification" : var1["qualification"],
                "experience" : var1["experience"],
            }
        }
        questions = None

        try:
            with connection.cursor() as cursor:
                cursor.execute("SELECT * from questions where c_id = %s and j_id = %s",[request.session['c_id'],job[0]])
                # return HttpResponse(str(request.session['id']) + " " + str(job[0]))
                questions = list(cursor.fetchone())
            # return HttpResponse(questions[0])
        except :
            pass
            # return redirect('Company:index')
            # print(questions[2])

        if(questions):
            try:
                knockouts = json.loads(questions[3])
            except:
                knockouts = questions[3]
            
            try:
                questions1 = json.loads(questions[2])
            except:
                # print(json.loads(questions[2]))
                # return HttpResponse(questions[2])
                # questions1 = questions[2].replace('"','\"')
                questions1 = eval(questions[2])
                # return HttpResponse(questions[2]["Other"])
            
            # return HttpResponse(str(knockouts))
            # Looping through the list of array of Knockout_questions
            temp1_dict = dict()
            if(knockouts):
                co = 0
                for c,knockout in knockouts.items():
                    # return HttpResponse(knockout)
                    # knockout = eval(knockout)
                    # temp1_dict[c] = {
                    #     "question" : knockout[0],
                    #     "no_of_options" : len(knockout),
                    #     "options" : knockout[0],
                    #     "marks" : knockout,
                    # }
                    temp1_dict[co] = {
                        "question" : c,
                        "no_of_options" : len(knockout),
                        "opt_marks" : knockout
                    }
                    co+=1
                temp["2"] = {
                    "knockout" : temp1_dict
                }
            else:
                temp["2"] = {
                    "knockout" : dict()
                }
            print(temp1_dict)
            # return HttpResponse(temp1_dict)
            
            # Looping through Questions
            # temp1_dict.clear()
            temp_arr = tuple(questions1.items()) #Converting all the questions details into suitable format
            arr = []
            set_type= list()
            # return HttpResponse(str(len(temp_arr)))
            if(len(temp_arr)):
                for a in temp_arr:
                    type1 = a[0]    #For getting type
                    ques_arr = list(a[1])   #For getting Questions 
                    for b in ques_arr:
                        ques = str(list(b.keys())[0])
                        opt = eval(str(list(b.items())[0][1][0][0]))
                        ans = str(list(b.items())[0][1][0][1])
                        marks = str(list(b.items())[0][1][1])
                        tp_dict10 = {
                            "type" : type1.capitalize(),
                            "question" : ques,
                            "options" : list(opt),
                            "answer" : ans,
                            "marks" : marks
                        }
                        set_type.append(type1.capitalize())
                        arr.append(tp_dict10)
                temp["3"] = {
                    "questions" : arr,
                    "types" : list(set(set_type))
                }
        else:
            temp["2"] = {
                "knockout" : []
            }
            temp["3"] = {
                "questions" : [],
                "types" : []
            }
        temp["job_id"] = job_id
        # return HttpResponse(str(temp))
        # final_arr.append(temp)
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
    # for i,j in enumerate(final_arr):
    #     dict1[i] = j

    print(temp)
    data["edit_jobs"] = temp
    # return HttpResponse(str(temp))
    # return HttpResponse(data["edit_jobs"]["0"]) #Final dictionary data
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

def save_job_questions(request):
    c_id = request.session["c_id"]
    var = json.dumps(request.POST.get('edit_jobs_details'))
    # return HttpResponse(var)
    # print(json.dumps(var))
    # return HttpResponse(str(json.loads(json.dumps(var))))
    try:
        print("try")
        dict1 = eval(json.loads(var))
        # return HttpResponse(str(dict1["job_id"]))
    except:
        print("except")
        dict1 = eval(var)
    
    try:
        dict1['job_id'] = dict1['job_id']
    except:
        with connection.cursor() as cursor:
            sql = "SELECT max(j_id) from jobs"
            cursor.execute(sql)
            res = list(cursor.fetchone())
            dict1['jobid'] = int(res[0])+1
            # return HttpResponse(str(dict1))
    # return HttpResponse(str(dict1))
    # print(type(dict1),dict1)
    # return HttpResponse(str(dict1["3"]["types"]))

    requirements = dict()
    requirements["designation"] = dict1["0"]["job_details"]["designation"]
    requirements["description"] = dict1["0"]["job_details"]["description"]
    requirements["skills"] = dict1["1"]["requirements"]["skills"]
    requirements["experience"] = dict1["1"]["requirements"]["experience"]
    requirements["qualification"] = dict1["1"]["requirements"]["qualification"]

    vacancies = dict1["0"]["job_details"]["no_of_vacancies"]
    date = dict1["0"]["job_details"]["last_date"]
    try:
        date_str1 = date.split("/")
        if(len(date_str1)!=3):
            date_str1 = date.split("-")

        # return HttpResponse(str(date_str1))
        last_date = date_str1[0] + '-' + date_str1[1] + '-' + date_str1[2]
    except:
        import datetime
        var1 = datetime.date.today()
        last_date = var1.strftime("%m/%d/%y")
        last_date = last_date.split("/")
        last_date = last_date[2] + '-' + last_date[0] + '-' + last_date[1]
    # return HttpResponse(str(dict1))
    questions = dict()
    for type1 in dict1["3"]["types"]:
        questions[type1] = []

    for ques_ans in dict1["3"]["questions"]:
        list1 = questions[ques_ans["type"]]
        temp_dict = dict()
        # temp_dict[str(ques_ans["question"])] = None
        options = tuple(ques_ans["options"])
        ans = ques_ans["answer"]
        marks = ques_ans["marks"]
        final = ((options,ans),marks)
        temp_dict[(str(ques_ans["question"])).replace('"','\"')] = final
        list1.append(temp_dict)
        questions[ques_ans["type"]] = list1

    # For knockout Questions
    kn_dict = dict()
    # dict1["2"]["knockout"]
    # return HttpResponse(str(dict1["2"]["knockout"]))
    for kn_ques in dict1["2"]["knockout"].values():
        val = []
        try :
            var1 = list(kn_ques['options'])
            var2 = list(kn_ques['marks'])
            for i,j in zip(var1,var2):
                val.append([i,j])
        except:
            val.extend(kn_ques['opt_marks'])
        
        kn_dict[kn_ques['question']] = val
    # return HttpResponse(str(kn_dict))
    # return HttpResponse(json.loads(var))
    # print(questions)
    # return HttpResponse(str(last_date))

    
    with connection.cursor() as cursor:
        try:
            print("try")
            temp = dict1['job_id'] 
            # return HttpResponse(str(temp))
            sql1 = "Update jobs set requirements = '{}' where j_id = {} and c_id = {}".format(json.dumps(requirements),dict1["job_id"],c_id)
            sql2 = "Update jobs set no_of_vacancies = {} where j_id = {} and c_id = {}".format(vacancies,dict1["job_id"],c_id)
            sql3 = "Update jobs set last_date = '{}' where j_id = {} and c_id = {}".format(last_date,dict1["job_id"],c_id)
            sql4 = "Update questions set questions = '{}' where j_id = {} and c_id = {}".format(json.dumps(questions),dict1["job_id"],c_id)
            sql5 = "Update questions set knockout_questions = '{}' where j_id = {} and c_id = {}".format(json.dumps(kn_dict),dict1["job_id"],c_id)
            # return HttpResponse(sql3)
            cursor.execute(sql1)
            cursor.execute(sql2)
            cursor.execute(sql3)
            cursor.execute(sql4)
            cursor.execute(sql5)
        except:
            print("except")
            sql1 = "Insert into jobs values ({},{},'{}',{},8,{})".format(dict1["jobid"],c_id,json.dumps(requirements),vacancies,last_date)
            sql2 = "Insert into questions values ({},{},'{}','{}')".format(dict1["jobid"],c_id,json.dumps(questions),json.dumps(kn_dict))
            # return HttpResponse(sql2)
            cursor.execute(sql1)
            cursor.execute(sql2)
        # return HttpResponse(str(sql3))
    # return HttpResponse("123")
    return redirect("Company:index")

def log_out(request):
    logout(request)
    return redirect('/')


def save_job_questions1(request):
    c_id = request.session["c_id"]
    var = json.dumps(request.POST.get('edit_jobs_details'))
    # return HttpResponse(var)
    # print(json.dumps(var))
    # return HttpResponse(str(json.loads(json.dumps(var))))
    try:
        print("try")
        dict1 = eval(json.loads(var))
    except:
        print("except")
        dict1 = eval(var)
    
    try:
        dict1["3"]['job_id'] = dict1["3"]['job_id']
    except:
        with connection.cursor() as cursor:
            sql = "SELECT max(j_id) from jobs"
            cursor.execute(sql)
            res = list(cursor.fetchone())
            dict1["3"]['job_id'] = int(res[0])+1
            # return HttpResponse(str(dict1))
    # return HttpResponse("123")

    print(type(dict1),dict1)
    # return HttpResponse(str(dict1["3"]["types"]))

    requirements = dict()
    requirements["designation"] = dict1["0"]["job_details"]["designation"]
    requirements["description"] = dict1["0"]["job_details"]["description"]
    requirements["skills"] = dict1["1"]["requirements"]["skills"]
    requirements["experience"] = dict1["1"]["requirements"]["experience"]
    requirements["qualification"] = dict1["1"]["requirements"]["qualification"]

    vacancies = dict1["0"]["job_details"]["no_of_vacancies"]
    last_date = dict1["0"]["job_details"]["last_date"]

    questions = dict()
    for type1 in dict1["3"]["types"]:
        questions[type1] = []

    for ques_ans in dict1["3"]["questions"]:
        list1 = questions[ques_ans["type"]]
        temp_dict = dict()
        # temp_dict[str(ques_ans["question"])] = None
        options = tuple(ques_ans["options"])
        ans = ques_ans["answer"]
        marks = ques_ans["marks"]
        final = ((options,ans),marks)
        temp_dict[(str(ques_ans["question"])).replace('"','\"')] = final
        list1.append(temp_dict)
        questions[ques_ans["type"]] = list1

    return HttpResponse(json.loads(var))
    # return HttpResponse(str(questions))
    
    with connection.cursor() as cursor:
        sql1 = "Update jobs set requirements = '{}' where j_id = {} and c_id = {}".format(json.dumps(requirements),dict1["job_id"],c_id)
        sql2 = "Update jobs set no_of_vacancies = {} where j_id = {} and c_id = {}".format(vacancies,dict1["job_id"],c_id)
        sql3 = "Update questions set questions = '{}' where j_id = {} and c_id = {}".format(json.dumps(questions),dict1["job_id"],c_id)
        # return HttpResponse(str(sql3))
        cursor.execute(sql1)
        cursor.execute(sql2)
        cursor.execute(sql3)

    return redirect("Company:index")