from django.urls import path
from .import views

urlpatterns = [
    path('', views.view_faq, name='view_faq'),
    path('answer/<str:pk>', views.answer, name='answer'),
    path('question/', views.question, name='question'),
    path('like/<str:pk>', views.like, name='like'),
]