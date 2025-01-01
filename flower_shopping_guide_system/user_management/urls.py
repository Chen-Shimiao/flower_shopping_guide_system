from atexit import register
from django.urls import path 
from . import views

urlpatterns = [
    path('user_login/', views.user_login, name='user_login'),
    path('user_logout/', views.user_logout, name='user_logout'),
    path('user_register/', views.user_register, name='user_register'),
    path('contact', views.contact_view, name='contact'),
    path('personal_details/', views.personal_details, name='personal_details'),
]


