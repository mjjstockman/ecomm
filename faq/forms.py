from django import forms
from .models import Question, Answer


class QuestionForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(QuestionForm, self).__init__(*args, **kwargs)

        self.fields['body'].label = "Question"

    email_on_answer = forms.CharField(widget=forms.CheckboxInput(attrs={"class": "rounded-0 border border-dark border-3"}))
    body = forms.CharField(widget=forms.TextInput(attrs={"class": "rounded-0 border border-dark border-3"}))

    class Meta:
        model = Question
        fields = ['body', 'email_on_answer']
        labels = {
            'body': 'Question',
        }


class AnswerForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(AnswerForm, self).__init__(*args, **kwargs)

        self.fields['body'].label = "Answer"

    body = forms.CharField(widget=forms.TextInput(attrs={"class": "rounded-0"}))

    class Meta:
        model = Answer
        fields = ['body']
        labels = {
            'body': 'Submit answer',
        }
