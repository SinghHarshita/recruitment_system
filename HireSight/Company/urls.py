from django.urls import path, include
from django.conf.urls import url
from django.conf import settings
from django.contrib.auth import logout
from . import views

app_name = 'Company'

urlpatterns = [
    url(r'^$', views.index, name = 'index'),
    url(r'^run/$', views.test, name = "run"),
    #url(r'^notifications/$', views.notifications, name = "notifications"),
    path('',include('social_django.urls',namespace='social')),    
    # path('logout/', logout,{'next_page': settings.LOGOUT_REDIRECT_URL},name='logout'),
]