from django.urls import path
from .import views

urlpatterns = [
<<<<<<< HEAD
    path('', views.QuestionList.as_view(), name='view_faq'),
=======
    path('', views.view_faq, name='view_faq'),
    path('', views.view_faq, name='answer'),
>>>>>>> new-question
]