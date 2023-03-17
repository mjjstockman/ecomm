from django.shortcuts import (render, redirect, reverse, get_object_or_404,
                              get_list_or_404)
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.http import HttpResponseRedirect
from .forms import QuestionForm, AnswerForm
from .models import Question, Answer


def faq(request):
    questions = get_list_or_404(
        Question.objects.filter(status=1).order_by("-created_on")
    )
    question_form = QuestionForm()
    answer_form = AnswerForm()

    context = {
        "question_form": question_form,
        "answer_form": answer_form,
        "questions": questions,
    }
    return render(request, "faq/faq.html", context)


@login_required
def answer(request, pk):
    """Adds a setlist to the database for the admin to consider"""
    question = get_object_or_404(Question, id=pk)
    author = request.user
    # liked = False
    # if post.like.filter(id=self.request.user.id).exists():
    #     liked = True
    answer_form = AnswerForm()
    if request.method == "POST":
        answer_form = AnswerForm(request.POST)
        if answer_form.is_valid():
            answer_form.instance.question = question
            answer_form.instance.author = author
            if request.user.is_superuser:
                answer_form.instance.status = 1
            answer_form.save()
            messages.success(request, f'Your answer has been submitted!')
            return redirect("/")
        else:
            context = {
                "answer_form": answer_form,
                "liked": liked,
                }
            messages.error(request, f'Sorry! There was a problem!')
            return render(request, "faq/faq.html", context)


@login_required
def question(request):
    """Adds a setlist to the database for the admin to consider"""
    author = request.user
    question_form = QuestionForm()
    if request.method == "POST":
        question_form = QuestionForm(request.POST)
        if question_form.is_valid():
            question_form.instance.author = author
            if request.user.is_superuser:
                question_form.instance.status = 1
            question_form.save()
            messages.success(request, f'Your question has been submitted!')
            return redirect("/")
        else:
            context = {"question_form": question_form}
            messages.error(request, f'Sorry! There was a problem!')
            return render(request, "faq/faq.html", context)


@login_required
def like(request, pk):
    answer = get_object_or_404(Answer, id=pk)
    if answer.like.filter(id=request.user.id).exists():
        messages.success(request, f'You have unliked the answer!')
        answer.like.remove(request.user)
        
    else:
        messages.success(request, f'You have liked the answer!')
        answer.like.add(request.user)
        

    return HttpResponseRedirect(reverse("faq"))
