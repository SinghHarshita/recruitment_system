"""HireSight URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf.urls import url
# For OAuth
from django.conf import settings
from django.contrib.auth import logout
from . import views
# #################

urlpatterns = [
    url(r'^$', include('LandingPage.urls')),
    url(r'^applicant/', include('Applicant.urls')),
    url(r'^company/', include('Company.urls',namespace='Company')),
    path('admin/', admin.site.urls),
    # For OAuth
    path('',include('social_django.urls',namespace='social')),    
    path('logout/', views.log_out,name='logout'),
    # ###########
    url(r'^form_details/',views.details,name='form_details'),
    url(r'^system_auth/',views.auth_user,name='auth_user'),
]
