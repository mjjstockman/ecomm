from django.db import models
from django.contrib.auth.models import User
from django.core.mail import send_mail
from django.conf import settings

STATUS = ((0, "Submitted"), (1, "Published"))


class Question(models.Model):
    body = models.CharField(max_length=200, unique=True)
    author = models.ForeignKey(
        User,
        on_delete=models.SET_NULL,
        null=True,
        related_name="question_author")
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(auto_now=True)
    status = models.IntegerField(choices=STATUS, default=0)
    email_on_answer = models.BooleanField(default=False)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.body


class Answer(models.Model):
    question = models.ForeignKey(
        Question,
        on_delete=models.SET_NULL,
        null=True,
        related_name='question_answer')
    body = models.CharField(max_length=200, unique=True)
    author = models.ForeignKey(
        User,
        related_name="answer_author",
        on_delete=models.SET_NULL,
        null=True)
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(auto_now=True)
    status = models.IntegerField(choices=STATUS, default=0)
    like = models.ManyToManyField(User, related_name='like_answer',
                                  blank=True)
    dislike = models.ManyToManyField(User, related_name='dislike_answer',
                                     blank=True)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return f"Answer to {self.question}"

    def save(self, *args, **kwargs):
        if self.status == 1 and self.question.email_on_answer:
            question = self.question.body
            subject = 'Your question on Get Wurst has been answered!'
            message = f'Your question { question } on Get Wurst has been ' \
                'answered!'
            email_from = settings.EMAIL_HOST_USER
            user_email = [self.question.author.email, ]
            send_mail(subject, message, email_from, user_email)

        super().save(*args, **kwargs)
