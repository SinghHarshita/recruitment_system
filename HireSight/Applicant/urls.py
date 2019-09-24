from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name = "applicant_dashboard"),
    url(r'^notifications/$', views.notifications, name = "notifications"),
    url(r'^test/$', views.test, name="test"),
    #url(r'^load_applicant', views.index, name="index")
]