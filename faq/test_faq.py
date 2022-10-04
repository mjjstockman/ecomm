import unittest
from django.urls import reverse, resolve
from . views import view_faq


class TestUrls(unittest.TestCase):

    def test_faq_url(self):
        url = reverse('view_faq')
        self.assertEqual(resolve(url).func, view_faq)
