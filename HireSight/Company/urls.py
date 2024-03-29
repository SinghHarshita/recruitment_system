from django.urls import path
from django.conf.urls import url
from . import views

app_name = 'Company'

urlpatterns = [
    url(r'^$', views.index, name = 'index'),
    url(r'^run/$', views.test, name = "run"),
    url(r'^notifications/$', views.company_notifications, name = "company_notifications"),
    url(r'^post_jobs/$', views.company_post_jobs, name = "company_post_jobs"),
    # url(r'^view_applicants/$', views.company_view_applicants, name = "company_view_applicants"),
    url(r'^view_job/(?P<job_id>[0-9]+)/$', views.company_view_jobs, name = "company_view_jobs"),
    # url(r'^view_applicants/$', views.company_view_applicants, name = "company_view_applicants"),
    path('view_applicants/<int:job_id>/', views.company_view_applicants, name = "company_view_applicants"),
    
    # url(r'^view_job/$', views.company_view_jobs, name = "company_view_jobs"),

    url(r'^statistics/$', views.company_statistics, name = "company_statistics"),
    url(r'^profile/$', views.company_profile, name = "company_profile"),
    url(r'^save_questions/$',views.save_job_questions, name="saveQuestions"),
    url(r'^logout/$', views.log_out, name="logout"),
    #url(r'^notifications/$', views.notifications, name = "notifications"),
    path('view_applicants/<int:job_id>/accept', views.company_accept_applicants, name = "company_view_applicants_accept"),
    path('view_applicants/<int:job_id>/reject', views.company_reject_applicants, name = "company_view_applicants_reject"),
    path('view_applicants/<int:job_id>/onHold', views.company_on_hold_applicants, name = "company_view_applicants_on_hold"),
]