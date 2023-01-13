from django import forms
from .models import Question, Answer


class QuestionForm(forms.ModelForm):
    """Uses Setlist model to create form gigs, song and author fields
    The gig and author fields are taken from the views and hidden from
    the user
    """
    email_on_answer = forms.CharField(widget=forms.CheckboxInput(
                      attrs={"class": "rounded-0"}))

    class Meta:
        model = Question
        fields = ['body', 'email_on_answer']
        labels = {
            'body': 'Question',
        }


class AnswerForm(forms.ModelForm):
    class Meta:
        model = Answer
        fields = ['body']
        labels = {
            'body': 'Submit answer',
        }
