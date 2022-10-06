<<<<<<< HEAD
from django.forms import ModelForm
from .models import Question, Answer


class QuestionForm(ModelForm):
    class Meta:
        model = Question
        fields = ('body',)
=======
from django import forms
from .models import Question, Answer


class QuestionForm(forms.ModelForm):
    """Uses Setlist model to create form gigs, song and author fields
    The gig and author fields are taken from the views and hidden from 
    the user 
    """
    class Meta:
        model = Question
        fields = ['body']
        # widgets = {
        #     'author': forms.HiddenInput(),
        #     }


class AnswerForm(forms.ModelForm):
    """Uses Setlist model to create form gigs, song and author fields
    The gig and author fields are taken from the views and hidden from 
    the user 
    """
    class Meta:
        model = Answer
        fields = ['body']
        # widgets = {
        #     'author': forms.HiddenInput(),
        #     }
>>>>>>> new-question
