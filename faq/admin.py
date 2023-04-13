from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import Question, Answer


@admin.register(Answer)
class AnswerAdmin(SummernoteModelAdmin):

    summernote_fields = ('body')


class AnswerInline(admin.TabularInline):
    model = Answer


@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):
    list_display = ('body', 'created_on')
    list_filter = ('status', 'created_on')
    actions = ['publish_questions']
    inlines = [
        AnswerInline,
    ]

    def publish_questions(self, request, queryset):
        queryset.update(status=True)

    def save(self, *args, **kwargs):
        if self.status == 1:
            question = self.question.body
            subject = 'Your question on Get Wurst has been answered!'
            message = 'Your question {{question}} on Get Wurst has been \
                       answered!'
            email_from = settings.EMAIL_HOST_USER
            user_email = [self.question.author.email, ]
            send_mail(subject, message, email_from, user_email)

        super().save(*args, **kwargs)
