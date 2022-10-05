from django.shortcuts import render
from django.views import generic
from .models import Question, Answer
from .forms import QuestionForm


class QuestionList(generic.ListView):
    model = Question
    queryset = Question.objects.filter(status=1).order_by("-created_on")
    template_name = "faq/view_faq.html"
    paginate_by = 10
    
    def get_context_data(self, **kwargs):
        context = super(QuestionList,self).get_context_data(**kwargs)
        context['form'] = QuestionForm()
        return context



