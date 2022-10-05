from django.shortcuts import render
from django.views import generic
from .models import Question, Answer


class QuestionList(generic.ListView):
    model = Question
    queryset = Question.objects.filter(status=1).order_by("-created_on")
    template_name = "view_faq.html"
    paginate_by = 10

def view_faq(request):
    return render(request, 'faq/view_faq.html')

