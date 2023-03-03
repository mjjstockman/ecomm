from django import forms
from .models import Question, Answer


class QuestionForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        """
        Question form.
        """
        super(QuestionForm, self).__init__(*args, **kwargs)

        self.fields['body'].label = "Question"

    class Meta:
        model = Question
        fields = ['body', 'email_on_answer']
        labels = {
            'body': 'Question',
        }
        help_texts = {
                'email_on_answer': 'Tick if you\'d like an email when your \
                    question in answered.'
        }


class AnswerForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        """
        Answer form.
        """
        super(AnswerForm, self).__init__(*args, **kwargs)

        self.fields['body'].label = "Answer"

    class Meta:
        model = Answer
        fields = ['body']
        labels = {
            'body': 'Submit answer',
        }
        
