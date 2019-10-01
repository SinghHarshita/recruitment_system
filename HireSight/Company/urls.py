from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name = 'index'),
    url(r'^run/$', views.test, name = "run"),
    url(r'^notifications/$', views.company_notifications, name = "company_notifications"),
    url(r'^post_jobs/$', views.company_post_jobs, name = "company_post_jobs"),
    url(r'^view_applicants/$', views.company_view_applicants, name = "company_view_applicants"),
    url(r'^view_jobs/$', views.company_view_jobs, name = "company_view_jobs"),
    url(r'^statistics/$', views.company_statistics, name = "company_statistics"),
    url(r'^profile/$', views.company_profile, name = "company_profile"),
    #url(r'^notifications/$', views.notifications, name = "notifications"),
]