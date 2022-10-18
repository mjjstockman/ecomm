import unittest
from django.urls import reverse
from django.test import TestCase, Client
from products.models import Category, Product


class TestViews(TestCase):

    def test_products_all_GET(self):
        client = Client()

        response = client.get(reverse('products'))

        self.assertEqual(response.status_code, 302)
        self.assertTemplateUsed('products/all.html')

