# Generated by Django 3.2 on 2022-10-06 13:21

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('faq', '0004_remove_answer_author'),
    ]

    operations = [
        migrations.RenameField(
            model_name='answer',
            old_name='body',
            new_name='answer',
        ),
    ]
