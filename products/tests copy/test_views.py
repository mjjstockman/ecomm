# import unittest
# from django.urls import reverse
# from django.test import TestCase, Client
# from products.models import Category, Product


# class TestViews(TestCase):

#     def setUp(self):
#         self.client = Client()
#         self.category1 = Category.objects.create(
#             name = 'Category 1',
#         )
#         self.products_url = reverse('products')
#         self.products_detail_url = reverse('product_detail', args=[1])
#         self.products_edit_url = reverse('edit_product', args=[1])
#         self.products_delete_url = reverse('delete_product', args=[1])
#         self.product1 = Product.objects.create(
#             name = 'Product 1',
#             short_description = 'Prod 1 description',
#             description = 'Prod 1 full description',
#             price = 1,
#             image = 'media/product_images/test1.png',
#             category = self.category1
#         )

#     def tearDown(self):
#         self.category1.delete()


#     def test_products_all_GET(self):
        
#         response = self.client.get(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertTemplateUsed('products/all.html')


#     def test_products_detail_GET(self):
       
#         response = self.client.get(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertTemplateUsed('products/detail.html')


#     needed as used in setup???
#     def test_products_add_POST_adds_new_product(self):
       
#         response = self.client.post(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertEqual(self.product1.name, 'Product 1')
#         self.assertEqual(self.product1.category, 'Category 1')
#         self.assertTemplateUsed('products/add.html')


#     def test_products_edit_POST_edits_product(self):

#         self.product1.name = 'Edited Product Name'
       
#         response = self.client.post(self.products_edit_url, {
#             'name': 'Edited Product Name'
#         })

#         self.assertEqual(response.status_code, 302)
#         self.assertEqual(self.product1.name, 'Edited Product Name')
#         self.assertTemplateUsed('products/add.html')

#     def test_products_delete_POST_deletes_product(self):

#         self.product1.delete()
        
#         response = self.client.post(self.products_delete_url)

#         self.assertEqual(response.status_code, 302)
#         self.assertEqual(Product.objects.count(), 0)


COMMITS FROM OCTOBER 2nd

Add failing test to test_urls to check faq testing