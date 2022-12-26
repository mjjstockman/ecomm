from django.urls import path
from . import views

urlpatterns = [
    path('', views.events_all, name='events_all'),
]
