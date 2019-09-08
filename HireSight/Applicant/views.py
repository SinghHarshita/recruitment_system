from django.shortcuts import render
from django.db import connection
from django.http import HttpResponse

# Create your views here.
def index(request):
    #print(request.session["id"])
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from user where u_id = %s",[request.session["id"]])
        data = applicant_data(list(cursor.fetchall())[0])
        #data = list(cursor.fetchall())
        #print(data)
    return render(request, "dashboard.html", data)


def applicant_data(data) :
    return {
        "name" : data[1],
        "gender" : data[5],
        "age" : data[6],
        "phone" : data[7],
        "address" : data[8],
        "following_company" : data[11],
        "cv_file_path" : data[9],
        "cv_updated_at" : data[10],
        "notifications" : data[12],
    }
