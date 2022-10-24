# Generated by Django 3.2 on 2022-10-22 11:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0014_auto_20221022_1001'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='fake',
            name='description',
        ),
        migrations.RemoveField(
            model_name='fake',
            name='price',
        ),
        migrations.RemoveField(
            model_name='fake',
            name='short_description',
        ),
        migrations.AlterField(
            model_name='fake',
            name='image',
            field=models.ImageField(upload_to='media/product_images'),
        ),
    ]
