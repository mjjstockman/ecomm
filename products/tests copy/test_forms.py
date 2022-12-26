# from django.test import TestCase, Client
# from django.core.files.uploadedfile import SimpleUploadedFile
# from products.form import FakeForm
# from products.models import Category


# class TestFakeForm(TestCase):
#     def setUp(self):
#         self.client = Client()
#         self.category1 = Category.objects.create(
#             name='Category 1',
#         )

#     def test_fake_form_valid_data(self):
#         form = FakeForm(data={
#             'name': 'Fake Name 1',
#             'category': self.category1,
#             'image': SimpleUploadedFile('file.jpg', b"file_content",
#                                         content_type='image/jpeg')
#         })

#         self.assertTrue(form.is_valid())
