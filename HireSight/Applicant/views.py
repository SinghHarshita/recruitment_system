from django.shortcuts import render,redirect
from django.db import connection
from django.http import HttpResponse
import json

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
    for res in data1:
        if res['name'] == 'location':
            loc+="c.address like '%{}%' or ".format(res['value'])
        if res['name'] == 'designation':
            loc+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'skills':
            loc+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'qualification':
            loc+="requirements like '%{}%' or ".format(res['value'])
        if res['name'] == 'experience':
            loc+="requirements like '%{}%' or ".format(res['value'])
    else:
        loc = loc[:-4]

    sql = "SELECT DISTINCT(j_id) name, email_id, contact, description, requirements, j_id , c.c_id, last_date FROM jobs as j, company as c WHERE j.j_id = c.c_id AND ({})".format(loc)
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
    return render(request, "apply_job_q_a.html", data)

# def job_endpoint(request):
#     if(request.method == 'POST'):
#         return 