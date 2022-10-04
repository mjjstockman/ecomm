import unittest
from django.urls import reverse, resolve
from home.views import index
from products.views import all, detail, add, edit, delete
from profiles.views import profile, order_history
from cart.views import view_cart, add_to_cart, adjust_cart, remove_from_cart


class TestUrls(unittest.TestCase):

    def test_home_url(self):
        url = reverse('home')
        self.assertEqual(resolve(url).func, index)

    def test_products_url(self):
        url = reverse('products')
        self.assertEqual(resolve(url).func, all)

    def test_product_detail_url(self):
        url = reverse('product_detail', args=[1])
        self.assertEqual(resolve(url).func, detail)

    def test_add_product_url(self):
        url = reverse('add_product')
        self.assertEqual(resolve(url).func, add)

    def test_product_edit_url(self):
        url = reverse('edit_product', args=[1])
        self.assertEqual(resolve(url).func, edit)

    def test_profile_url(self):
        url = reverse('profile')
        self.assertEqual(resolve(url).func, profile)

    def test_order_history_url(self):
        url = reverse('order_history', args=[1])
        self.assertEqual(resolve(url).func, order_history)

    def test_cart(self):
        url = reverse('view_cart')
        self.assertEqual(resolve(url).func, view_cart)

    def test_add_to_cart_url(self):
        url = reverse('add_to_cart', args=[1])
        self.assertEqual(resolve(url).func, add_to_cart)

    def test_adjust_cart_url(self):
        url = reverse('adjust_cart', args=[1])
        self.assertEqual(resolve(url).func, adjust_cart)

    def test_remove_from_cart_url(self):
        url = reverse('remove_from_cart', args=[1])
        self.assertEqual(resolve(url).func, remove_from_cart)


