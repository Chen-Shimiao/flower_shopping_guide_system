from atexit import register
from django.urls import path
from . import views

urlpatterns = [
    path('upcoming_holiday_recommendations', views.upcoming_holiday_recommendations,name='upcoming_holiday_recommendations' ),
    path('normalized_products', views.normalized_products, name='normalized_products'),
    path('home', views.home_page, name='home_page'),
    path('', views.home_page, name='home'),
    path('category/<int:category_id>', views.category_detail, name='category_detail'),
    path('purpose_list', views.purpose_list, name='purpose_list'),
    path('purpose/<int:purpose_id>', views.normalized_products_by_purposes, name='normalized_products_by_purposes'),
    path('search/', views.flower_search, name='flower_search'),
]


