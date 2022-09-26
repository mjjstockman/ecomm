from django.urls import path
from .import views


urlpatterns = [
    path('', views.menu_all, name='menu_all'),
    path('<product_id>', views.detail, name='detail'),
]