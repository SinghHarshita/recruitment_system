from django.shortcuts import render
from django.http import HttpResponse
from django.db import connection
from django.contrib import messages
from django.shortcuts import redirect
from django.urls import reverse

# Create your views here.
def index(request):
    return render(request, "index.html")

def registerApplicant(request):
    if (request.POST):
        data = request.POST.dict()
        insert_data = dict()
        insert_data['user'] = 'User'
        insert_data['fname'] = data.get('fname') or "NULL"
        insert_data['lname'] = data.get('lname') or "NULL"
        full_name = (insert_data['fname'] + " " + insert_data['lname']).replace("'","")
        insert_data['full_name'] = full_name
        # insert_data['email'] = (data.get('email') or "NULL").replace("'","")
        insert_data['gender'] = (data.get('gender') or 'NULL').replace("'","")
        insert_data['dob'] = (data.get('datepicker') or "0000-00-00").replace("'","")
        insert_data['phone'] = (data.get('mobile') or "NULL").replace("'","")

        address = data.get('address1') or "NULL"
        address += data.get('address2') or ""
        address += data.get('city') or ""
        address += data.get('state') or ""
        address += data.get('zip') or ""
        insert_data['address'] = address.replace("'","")
        request.session['data'] = insert_data

        # return HttpResponse("<h2>" + str(request.session['data']) + "</h2>")
        return redirect("/login/google-oauth2/",kwargs={})

        
def registerCompany(request):
    if(request.POST):
        data = request.POST.dict()
        insert_data = dict()
        insert_data['user'] = 'Company'
        # request.session['data'] = data
        # return HttpResponse("<h2>" + str(request.session['data']) + "</h2>")
    
        insert_data['name'] = data.get('cname')
        # insert_data['email'] = "'" + data.get('email') + "'"
        insert_data['phone'] = data.get('mobile')

        address = data.get('address1') or "NULL"
        address += data.get('address2') or ""
        address += data.get('city') or ""
        address += data.get('state') or ""
        address += (data.get('zip') or "" + "'")
        address = address.replace("'",'')
        insert_data['address'] = address
        request.session['data'] = insert_data

        # return HttpResponse("<h2>" + str(request.session['data']) + "</h2>")
        return redirect("/login/google-oauth2/",kwargs={})
        
    # return HttpResponse("<h2>Registered Successfully</h2>")