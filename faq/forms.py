from django.forms import ModelForm
from .models import Question, Answer


class QuestionForm(ModelForm):
    class Meta:
        model = Question
        fields = ('body',)