from django.urls import path
from .import views

urlpatterns = [
    path('', views.QuestionList.as_view(), name='view_faq'),
]