from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection

# Create your views here.
def index(request):
    with connection.cursor() as cursor :
        cursor.execute("SELECT * from company where c_id = %s",[request.session["id"]])
        data = company_data(list(cursor.fetchall())[0])
    return render(request, "company_dashboard.html", data)
    #return HttpResponse("Hello Comapny!")

def company_data(data) :
    return {
        "name" : data[1],
        "address" : data[2],
        "alternative_email_id" : data[4],
        "contact" : data[5],
        "descp" : data[6],
    }
