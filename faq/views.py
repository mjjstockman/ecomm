from django.shortcuts import render, redirect
from .forms import QuestionForm, AnswerForm
from .models import Question

def view_faq(request):

    questions = Question.objects.filter(status=1).order_by('-created_on')
    question_form = QuestionForm()
    answer_form = AnswerForm()

    # if request.method == 'POST':
    #     question_form = QuestionForm(request.POST)
    #     if question_form.is_valid():
    #         question_form.save()

    context = {
        'question_form': question_form,
        'answer_form': answer_form,
        'questions': questions
    }
    return render(request, 'faq/view_faq.html', context)



def answer(request, pk):
    """Adds a setlist to the database for the admin to consider
    """
    question = Question.objects.get(id=pk)
    # author = request.user

    answer_form = AnswerForm()
    if request.method == 'POST':
        answer_form = AnswerForm(request.POST)
        if answer_form.is_valid():
            answer_form.instance.question = question
            answer_form.save()
            return redirect('/')
        else:
            context = {
                'answer_form': answer_form
            }
            return render(request, 'faq/view_faq.html', context)



def question(request):
    """Adds a setlist to the database for the admin to consider
    """
    # question = Question.objects.get(id=pk)
    # author = request.user

    question_form = QuestionForm()
    if request.method == 'POST':
        question_form = QuestionForm(request.POST)
        if question_form.is_valid():
            question_form.save()
            return redirect('/')
        else:
            context = {
                'question_form': question_form
            }
            return render(request, 'faq/view_faq.html', context)