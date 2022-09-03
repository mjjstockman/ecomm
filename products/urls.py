from django.urls import path
from . import views

urlpatterns = [
    path('', views.all, name='products'),
    path('add/', views.add, name='add_product'),
    path('edit/<str:pk>/', views.edit, name='edit_product'),
]