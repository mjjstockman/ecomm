# Generated by Django 3.2 on 2022-09-22 15:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('checkout', '0003_auto_20220922_1326'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='stripe_id',
            new_name='stripe_pid',
        ),
    ]
