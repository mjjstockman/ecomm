from django.urls import path
from .import views


urlpatterns = [
    path('', views.menu_all, name='menu_all'),
    path('<str:pk>/', views.detail, name='detail'),
]