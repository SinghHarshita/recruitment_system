from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from django.contrib import messages
from django.shortcuts import redirect

# Create your views here.
def index(request):
    return render(request, "index.html")

def registerApplicant(request):
    if (request.POST):
        data = request.POST.dict()
        fname = "'" + (data.get('fname') or "NULL") + "'" 
        lname = "'" + (data.get('lname') or "NULL") + "'"
        full_name = "'{} {}'".format(data.get('fname'),data.get('lname'))
        email = "'" + (data.get('email') or "NULL") + "'"
        gender = "'" + (data.get('gender') or 'NULL') + "'"
        dob = "'" + (data.get('datepicker') or "0000-00-00") + "'"
        phone = data.get('mobile') or "NULL"
        address = data.get('address1') or "NULL"
        address += data.get('address2') or ""
        address += data.get('city') or ""
        address += data.get('state') or ""
        address += data.get('zip') or ""
        with connection.cursor() as cursor:
            cursor.execute("SELECT * from user where email_id = {}".format(email))
            row1 = list(cursor.fetchall())
            cursor.execute("SELECT * from company where email_id = {}".format(email))
            row2 = list(cursor.fetchall())
            if(len(row1) == 0 and len(row2) == 0):
                sql = "INSERT into user(full_name,fname,lname,email_id,gender,date_of_birth,phone,address)values({},{},{},{},{},{},{},{})".format(full_name,fname,lname,email,gender,dob,phone,"'" + address + "'")
                # return HttpResponse("<h2>{}</h2>".format(sql))
                cursor.execute(sql)
                messages.add_message(request,messages.INFO,"Registered Successfully.......")
                return redirect("/login/google-oauth2/",kwargs={})
            else:
                messages.add_message(request,messages.INFO,"Already Registered.......")
                return redirect('/',kwargs={})

        # return HttpResponse("<h2>{}</h2>".format(sql))
        
def registerCompany(request):
    if(request.POST):
        data = request.POST.dict()
        name = "'" + data.get('cname') + "'"
        email = "'" + data.get('email') + "'"
        phone = data.get('mobile')
        address = data.get('address1') or "NULL"
        address += data.get('address2') or ""
        address += data.get('city') or ""
        address += data.get('state') or ""
        address += data.get('zip') or ""
        with connection.cursor() as cursor:
            cursor.execute("SELECT * from user where email_id = {}".format(email))
            row1 = list(cursor.fetchall())
            cursor.execute("SELECT * from company where email_id = {}".format(email))
            row2 = list(cursor.fetchall())
            if(len(row1) == 0 and len(row2) == 0):
                sql = "INSERT into compnay(name,address,email_id,contact) values ({},{},{},{})".format(name,address,email,phone)
                cursor.execute(sql)
                messages.add_message(request,messages.INFO,"Registered Successfully.......")
                return redirect("/login/google-oauth2/",kwargs={})
            else:
                messages.add_message(request,50,"Already Registered.......")
                return redirect('/',kwargs={})

    # return HttpResponse("<h2>Registered Successfully</h2>")