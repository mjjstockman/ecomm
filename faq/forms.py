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
        labels = {
            'body': 'Question',
        }
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
        labels = {
            'body': 'Add answer',
        }
        widgets = {
            'question': forms.HiddenInput(),
            }
