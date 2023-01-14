from django import forms
from .models import Question, Answer


class QuestionForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(QuestionForm, self).__init__(*args, **kwargs)

        self.fields['body'].label = "Question"

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

    class Meta:
        model = Answer
        fields = ['body']
        labels = {
            'body': 'Submit answer',
        }
