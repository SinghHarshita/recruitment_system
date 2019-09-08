from django.shortcuts import render
from django.http import HttpResponse

from django.contrib.sessions.models import Session
from django.contrib.auth.models import User

from django.db import connection
from django.urls import reverse
from django.contrib import messages
from django.shortcuts import redirect

# Create your views here .........
def index(request):
    return HttpResponse("HireSight Welcomes You!")

def details(request):
    user = str(request.user.email)
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where email_id = %s",[user])
        row1 = list(cursor.fetchall())
        cursor.execute("SELECT * from company where email_id = %s",[user])
        row2 = list(cursor.fetchall())
    if(len(row1) == 1 or len(row2) == 1):
        return redirect(auth_user)

    return HttpResponse("<h2>Sumedh please make the Form<br>I'm Bored<br>Collect the details like whether he is registering as company or User<br>After that insert the details into the User/Company table</h2>")

def auth_user(request):
    user = str(request.user.email)
    with connection.cursor() as cursor:
        cursor.execute("SELECT * from user where email_id = %s",[user])
        row1 = list(cursor.fetchall())
        cursor.execute("SELECT * from company where email_id = %s",[user])
        row2 = list(cursor.fetchall())

    if(len(row1) == 0 and len(row2) == 0):
        # messages.warning(request,"You are Not Registered....")
        return redirect('/',kwargs={msg:"You are Not Registered...."})
    
    if(len(row1)):
        data = row1[0]
        #print(data)
        request.session["id"] = data[0]
        request.session["email"] = data[4]
        #request.session["data"] = applicant_data(data)

        return redirect('/applicant/', kwargs={data})
    
    else:
        data = row2[0]
        request.session["id"] = data[0]
        request.session["email"] = data[3]
        return redirect('/company/',kwargs={})
