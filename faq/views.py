from django.shortcuts import (render, redirect, reverse, get_object_or_404,
                              get_list_or_404)
from django.http import HttpResponseRedirect
from .forms import QuestionForm, AnswerForm
from .models import Question, Answer


def faq(request):

    # questions = Question.objects.filter(status=1).order_by('-created_on')
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


def answer(request, pk):
    """Adds a setlist to the database for the admin to consider"""
    question = get_object_or_404(Question, id=pk)
    # question = get_list_or_404(Question, id=pk)
    answer = get_object_or_404(Answer, id=pk)
    # print(answer_form.instance.question)
    # print(answer)
    author = request.user
    # liked = False
    # print(liked)
    # if answer.like.filter(id=self.request.user.id).exists():
    #     liked = True
    #     print(liked)
    # else:
    #     liked = False

    answer_form = AnswerForm()
    if request.method == "POST":
        answer_form = AnswerForm(request.POST)
        if answer_form.is_valid():
            answer_form.instance.question = question
            answer_form.instance.author = author
            if request.user.is_superuser:
                answer_form.instance.status = 1
            answer_form.save()
            return redirect("/")
        # else:
    context = {
        "answer_form": answer_form,
        # "liked": liked,
        "answer": answer,
        }
    return render(request, "faq/faq.html", context)


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
            return redirect("/")
        else:
            context = {"question_form": question_form}
            return render(request, "faq/faq.html", context)


def like(request, pk):
    answer = get_object_or_404(Answer, id=pk)
    if answer.like.filter(id=request.user.id).exists():
        answer.like.remove(request.user)
        liked = False
        print(liked)
    else:
        answer.like.add(request.user)
        liked = True
        print(liked)

    return HttpResponseRedirect(reverse("faq"))
