from django.urls import path,include
from django.conf.urls import url
from django.conf import settings
from django.contrib.auth import logout
from . import views

app_name = 'landingPage'

urlpatterns = [

    url(r"^$", views.index, name = "index"),
    path('',include('social_django.urls',namespace='social')),
    path('logout/', logout, {'next_page': settings.LOGOUT_REDIRECT_URL},name='logout'),
    url(r'^registerApplicant$', views.registerApplicant, name = "registerApplicant"),
    url(r'^registerCompany$', views.registerCompany, name = "registerCompany")
]