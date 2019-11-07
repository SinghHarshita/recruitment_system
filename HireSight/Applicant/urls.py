from django.urls import path
from django.conf.urls import url
from . import views

# app_name = "Applicant"

urlpatterns = [
    url(r'^$', views.index, name = "applicant_dashboard"),
    url(r'^notifications/$', views.notifications, name = "notifications"),
    url(r'^applicant_profile/$', views.applicant_profile, name="applicant_profile"),
    url(r'^history/$', views.applicant_history, name="applicant_history"),
    url(r'^browse/$', views.browse_jobs_render, name="browse_jobs_render"),
    url(r'^browse/filter_location', views.browse_filter_location, name="browse_filter_location"),
    url(r'^test/$', views.test, name="test"),
    url(r'^apply/$', views.apply_now, name="apply_now"),
    #url(r'^load_applicant', views.index, name="index"),
    # path('endpoints/job_locations',job_endpoint,name="job_endpoint")
    # path('test/<int:job_id>/', views.test, name="test"),
]