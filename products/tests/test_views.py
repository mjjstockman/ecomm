import unittest
from django.urls import reverse
from django.test import TestCase, Client
from products.models import Category, Product


class TestViews(TestCase):

    def setUp(self):
        self.client = Client()
        self.category1 = Category.objects.create(
            name = 'Category 1',
        )
        self.products_url = reverse('products')
        self.products_detail_url = reverse('product_detail', args=[1])
        self.product1 = Product.objects.create(
            name = 'Product 1',
            short_description = 'Prod 1 description',
            description = 'Prod 1 full description',
            price = 1,
            image = 'media/product_images/test.png',
            category = self.category1
        )

    def test_products_all_GET(self):
        
        response = self.client.get(self.products_url)

        self.assertEqual(response.status_code, 302)
        self.assertTemplateUsed('products/all.html')


    def test_products_detail_GET(self):
       
        response = self.client.get(self.products_url)

        self.assertEqual(response.status_code, 302)
        self.assertTemplateUsed('products/detail.html')


    # def test_products_add_POST(self):
       
    #     response = self.client.get(self.products_url)

    #     self.assertEqual(response.status_code, 302)
    #     self.assertTemplateUsed('products/add.html')

