from django.db import models
from django.contrib.auth.models import User

STATUS = ((0, "Submitted"), (1, "Published"))


class Question(models.Model):
    body = models.CharField(max_length=200, unique=True)
    # author = models.ForeignKey(
    #     User, on_delete=models.SET_NULL, null=True, related_name="question_author"
    # )
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(auto_now=True)
    status = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.body


class Answer(models.Model):
    question = models.ForeignKey(Question, on_delete=models.SET_NULL, null=True, related_name='question_answer')
    body = models.CharField(max_length=200, unique=True)
    # author = models.ForeignKey(
    #     User, on_delete=models.CASCADE, related_name="answer_author"
    # )
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(auto_now=True)
    status = models.IntegerField(choices=STATUS, default=0)

    class Meta:
        ordering = ["-created_on"]


    def __str__(self):
        return f"Answer to {self.question}"