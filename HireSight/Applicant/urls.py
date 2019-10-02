from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name = "applicant_dashboard"),
    url(r'^notifications/$', views.notifications, name = "notifications"),
    url(r'^test/$', views.test, name="test"),
    url(r'^profile/$', views.applicant_profile, name="applicant_profile"),
    url(r'^history/$', views.applicant_history, name="applicant_history"),
    url(r'^browse/$', views.browse_jobs_render, name="browse_jobs_render"),
    #url(r'^load_applicant', views.index, name="index")
]