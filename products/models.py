from django.db import models
from django import forms



class Category(models.Model):

    class Meta:
        verbose_name_plural = 'Categories'
        
    name = models.CharField(max_length=254)
    # friendly_name = models.CharField(max_length=254, null=True, blank=True)

    def __str__(self):
        return self.name

    def get_friendly_name(self):
        return self.name


class Product(models.Model):
    category = models.ForeignKey('Category', default="To Be Added",
                 on_delete=models.SET_DEFAULT)
    name = models.CharField(max_length=254)
    description = models.TextField()
    price = models.DecimalField(max_digits=6, decimal_places=2)
    image = models.ImageField(upload_to='media/product_images')

    def __str__(self):
        return self.name
