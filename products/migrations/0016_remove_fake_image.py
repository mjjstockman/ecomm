# Generated by Django 3.2 on 2022-10-24 12:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0015_auto_20221022_1107'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='fake',
            name='image',
        ),
    ]