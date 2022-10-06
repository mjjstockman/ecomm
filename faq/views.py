from django.shortcuts import render
from .forms import QuestionForm
from .models import Question

def view_faq(request):

    questions = Question.objects.all().order_by('created_on')
    question_form = QuestionForm()

    if request.method == 'POST':
        question_form = QuestionForm(request.POST)
        if question_form.is_valid():
            question_form.save()

    context = {
        'question_form': question_form,
        'questions': questions
    }
    return render(request, 'faq/view_faq.html', context)


# def answer(request, pk):
#     """Adds a setlist to the database for the admin to consider
#     """
#     question = Question.objects.get(id=pk)
#     author = request.user
#     initial = {
#         'question': question,
#         'author': author,
#     }

#     form = AnswerForm(initial=initial)
#     if request.method == 'POST':
#         answerForm = AnswerForm(request.POST)
#         if form.is_valid():
#             form.save()
#             return redirect('/')

#     context = {
#         'form': form
#     }
#     return render(request, 'faq/view_faq.html', context)