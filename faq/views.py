from django.shortcuts import render
from .forms import QuestionForm
from .models import Question

def view_faq(request):

    questions = Question.objects.all().order_by('created_on')
    form = QuestionForm()

    if request.method == 'POST':
        form = QuestionForm(request.POST)
        if form.is_valid():
            form.save()


    context = {
        'form': form,
        'questions': questions
    }
    return render(request, 'faq/view_faq.html', context)

