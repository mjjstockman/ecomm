# import unittest
# from django.urls import reverse, resolve
# from products.views import all, detail, add, edit, delete


# class TestUrls(unittest.TestCase):

#     def test_products_url_resolves(self):
#         url = reverse('products')
#         self.assertEqual(resolve(url).func, all)

#     def test_product_detail_url_resolves(self):
#         url = reverse('product_detail', args=[1])
#         self.assertEqual(resolve(url).func, detail)

#     def test_add_product_url_resolves(self):
#         url = reverse('add_product')
#         self.assertEqual(resolve(url).func, add)

#     def test_product_edit_url_resolves(self):
#         url = reverse('edit_product', args=[1])
#         self.assertEqual(resolve(url).func, edit)

#     def test_product_delete_url_resolves(self):
#         url = reverse('delete_product', args=[1])
#         self.assertEqual(resolve(url).func, delete)

   