# Generated by Django 3.2 on 2022-10-06 12:06

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('faq', '0002_auto_20221006_1149'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='author',
        ),
    ]
