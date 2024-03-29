from django.shortcuts import render,redirect
from django.db import connection
from django.http import HttpResponse
import json
import random

data = {}
# Create your views here.
def index(request):

    try:
        id = request.session['id']
    except:
        return redirect('/')

    global data
    #print(request.session["id"])
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from user where u_id = %s",[request.session["id"]])
        data = applicant_data(list(cursor.fetchall())[0])
        #data = list(cursor.fetchall())
        #print(data)
    
    # return HttpResponse(str(request.session.items()))
    applicant_history(request)
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
    """ Renders Applicant History """
    global data
    
    history = dict()
    # Fetching history
    return HttpResponse(123)
    with connection.cursor() as cursor :
        cursor.execute("SELECT * FROM application_status WHERE applicant_status LIKE '%{}%'".format(request.session["id"]))
        result = cursor.fetchall()
        print(result)
        for _ in result:
            # for i in _:
            #     print(i)
            cursor.execute("SELECT * FROM jobs WHERE j_id = {}".format(_[0]))
            status = eval(_[1])
            #status = eval(status[request.session["id"]])
            #print(status[request.session["id"]]["status"])
            s = ""

            if int(status[request.session["id"]]["status"]) == 0:
                s = "Applied"
            elif int(status[request.session["id"]]["status"]) == 1:
                s = "Accepted"
            elif int(status[request.session["id"]]["status"]) == 2:
                s = "Rejected"
            elif int(status[request.session["id"]]["status"]) == 3:
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

def browse_filter_location(request):
    # print(request.POST.dict())
    data1 = json.loads(request.POST['formData'])
    # print(data1)
    loc = ''
    req = ''
    designation = ''
    skills = ''
    qualification = ''
    experience = ''
    for res in data1:
        if res['name'] == 'location':
            loc+="c.address like '%{}%' or ".format(res['value'])
        if res['name'] == 'designation':
            designation+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'skills':
            skills+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'qualification':
            qualification+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'experience':
            experience+="requirements like '%{}%' or ".format(res['value'])
    else:
        loc = loc[:-4]
        designation = designation[:-4]
        skills = skills[:-4]
        qualification = qualification[:-4]
        experience = experience[:-4]
        if loc != '':
            req = loc
        if designation != '':
            if req != '' :
                req += ' and (' + designation + ')'
            else :
                req = designation
        if skills != '' :
            if req != '' :
                req += ' and (' + skills + ')'
            else :
                req = skills
        if qualification != '' :
            if req != '':
                req += ' and (' + qualification + ')'
            else :
                req = qualification
        if experience != '':
            if req != '' :
                req += ' and (' + experience + ')'
            else :
                req = experience

    sql = "SELECT DISTINCT(j_id) name, email_id, contact, description, requirements, j_id , c.c_id, last_date FROM jobs as j, company as c WHERE j.j_id = c.c_id AND ({})".format(req)
    #print(sql)
    with connection.cursor() as cursor:
        cursor.execute(sql)
        res = list(cursor.fetchall())
        print(len(res))
        final_arr = []
    
        for r in res:
            temp = {
                'c_name': r[0],
                'c_email': r[1],
                'c_phone': r[2],
                'skills': eval(r[4])['skills'],
                'qualification':eval(r[4])['qualification'],
                'last_date':str(r[7]),
                'designation':eval(r[4])['designation'],
                'j_id':r[5],
                'c_id':r[6],
                'c_description':r[3],
                'd_description':eval(r[4])['description'],
            }
            #print(temp)
            final_arr.append(temp)

    # with connection.cursor() as cursor:
    #     cursor.execute("SELECT name, email_id, contact, description, requirements, j_id, c.c_id, last_date FROM jobs as j, company as c WHERE j.j_id = c.c_id AND c.address LIKE '%{}%'".format(request.POST['name']))
    #     res1 = cursor.fetchall()
    #     temp = []
    #     for r in res1:
    #         data1 = {
    #             'c_name': r[0],
    #             'c_email': r[1],
    #             'c_phone': r[2],
    #             'skills': eval(r[4])['skills'],
    #             'qualification':eval(r[4])['qualification'],
    #             'last_date':r[7],
    #             'designation':eval(r[4])['designation'],
    #             'j_id':r[5],
    #             'c_id':r[6],
    #             'c_description':r[3],
    #             'd_description':eval(r[4])['description'],
    #         }
    #         temp.append(data1)

    """ 
        SELECT name, email_id, contact, description, requirements, j_id, c.c_id, last_date
        FROM jobs as j, company as c
        WHERE j.j_id = c.c_id AND c.address LIKE '%address%'
    """
    return HttpResponse(json.dumps(final_arr), content_type="application/json")

def browse_jobs_render(request):
    return render(request, "browse_jobs.html", data)

def notifications(request) :
    global data
    #print(data)
    return render(request, "applicant_notifications.html", data)

def test(request):
    global data
    j_id = 1
    c_id = 1

    with connection.cursor() as cursor:
        sql = "SELECT questions, knockout_questions FROM questions WHERE j_id = {} and c_id = {}".format(j_id,c_id)
        cursor.execute(sql)
        result = cursor.fetchall()
        if len(result) :
            result = result[0]
            try :
                questions = json.loads(result[0])
                knockout_questions = json.loads(result[1])
            except :
                questions = eval(result[0])
                knockout_questions = eval(result[1])
        # print(result)

        # The tab titles for the form wizard
        types = dict()
        i = 0
        for x in list(questions.keys()):
            types[i] = x
            i += 1
        types[i] = "Knockout Questions"
        # types.sort()
        # types.append("Knockout Questions")
        # print(types)
        data["types"] = types
        l = list(types.items())[:-1]
        ques = dict()
        i = 0
        for x in l:
            for q in questions[x[1]]:
                # print(list(q.values())[0][0][0])
                ques[i] = {
                    
                            tuple(q.keys())[0] : list(q.values())[0][0][0],
                            "last" : 0
                    
                }
            i+=1
        # print(ques)
        # print(knockout_questions)
        kq = dict()
        for k in list(knockout_questions.items()):
            op = []
            for x in k[1]:
                op.append(x[0])
            kq = {
                k[0] : op
            }
        kq["last"] = 1
        # print(kq)
        ques[i] =  kq
        print(ques)
        data["questions"] = ques
        data["j_id"] = j_id
        data["c_id"] = c_id
    return render(request, "apply_job_q_a.html", data)

def apply_now(request):
    global data
    j_id = data["j_id"]
    c_id = data["c_id"]
    cv_rank = random.randint(1,10)
    knockout_score = random.randint(1,10)
    score = random.randint(1,10)
    total_rank = (cv_rank + knockout_score + score)/3
    new = dict()
    new[request.session["id"]] = {
        "status" : "0",
        "knockout_score" : str(knockout_score),
        "score" : str(score),
        "cv_rank" : str(cv_rank),
        "total_rank" : str(total_rank)
    }
    with connection.cursor() as cursor:
        sql = "SELECT applicant_status from application_status WHERE j_id = {}".format(j_id)
        cursor.execute(sql)

        result = cursor.fetchall()

        if len(result) :
            result = list(result)[0]
            try :
                result = json.loads(result[0])
            except :
                result = eval(result[0])
            # print(result.keys())
            result[request.session["id"]] = {
               "status" : "0",
                "knockout_score" : str(knockout_score),
                "score" : str(score),
                "cv_rank" : str(cv_rank),
                "total_rank" : str(total_rank) 
            }
            result = json.dumps(result)
            sql = "UPDATE application_status SET applicant_status = '{}' WHERE j_id = {}".format(result,j_id)
        else:
            new = json.dumps(new)
            sql = "INSERT INTO application_status(j_id,c_id,applicant_status) VALUES({},{},{})".format(j_id,c_id,new)

        cursor.execute(sql)
    # browse_jobs_render(request)
    return redirect('http://127.0.0.1:8000/applicant/browse/')

# def job_endpoint(request):
#     if(request.method == 'POST'):
#         return 