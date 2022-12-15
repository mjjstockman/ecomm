from django.test import SimpleTestCase
from django.urls import reverse, resolve


class TestUrls(SimpleTestCase):

    def test_events_url_is_resolved(self):
        url = reverse('events')
        self.assertEqual(resolve(url).func, events)