from django.db import models
from django import forms


class Category(models.Model):

    class Meta:
        verbose_name_plural = 'Categories'

    name = models.CharField(max_length=254)

    def __str__(self):
        return self.name


class Product(models.Model):
    category = models.ForeignKey('Category',
                                 on_delete=models.SET_DEFAULT, default=0)
    name = models.CharField(max_length=254)
    short_description = models.TextField()
    description = models.TextField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    image = models.ImageField(upload_to='product_images')

    def __str__(self):
        return self.name




