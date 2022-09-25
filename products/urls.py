from django.urls import path
from . import views

urlpatterns = [
    path('', views.all, name='products'),
    path('<int:product_id>/', views.detail, name='detail'),
    path('add/', views.add, name='add_product'),
    path('edit/<product_id>/', views.edit, name='edit_product'),
    path('delete/<product_id>/', views.delete, name='delete_product'),
]