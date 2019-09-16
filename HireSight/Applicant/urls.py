from django.urls import path
from django.conf.urls import url
from . import views

app_name = 'Applicant'

urlpatterns = [
    url(r'^$', views.index, name = "index"),
    #url(r'^load_applicant', views.index, name="index"),
    url(r'^log_out/', views.log_out, name="logout")
]