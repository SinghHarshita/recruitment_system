from django.urls import path, include
from django.conf.urls import url
from django.conf import settings
from . import views

app_name = 'Company'

urlpatterns = [
    url(r'^$', views.index,name='company_dashboard'),
    url(r'^run/$', views.test, name = "run"),
    url(r'^notifications/$', views.notifications, name = "notifications"),
    path('',include('social_django.urls',namespace='social')),
    url(r'^log_out/$',views.log_out,name="log_out"),   
    # path('logout/', logout,{'next_page': settings.LOGOUT_REDIRECT_URL},name='logout'),
]