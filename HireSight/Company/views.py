from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request):
    return render(request, "company_dashboard.html")
    #return HttpResponse("Hello Comapny!")