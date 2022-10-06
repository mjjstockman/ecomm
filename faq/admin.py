from django.contrib import admin
from django_summernote.admin import SummernoteModelAdmin
from .models import Question, Answer


@admin.register(Answer)
class AnswerAdmin(SummernoteModelAdmin):

    summernote_fields = ('body')


@admin.register(Question)
class QuestionAdmin(admin.ModelAdmin):

    list_display = ('body', 'created_on')
    # prepopulated_fields = {'slug': ('title',)}
    list_filter = ('status', 'created_on')
    actions = ['publish_questions']

    def publish_questions(self, request, queryset):
        queryset.update(status=True)