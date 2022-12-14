from django.test import TestCase, Client
from django.urls import reverse


class TestViews(TestCase):

    def test_events_view(self):
        client = Client()

        response = client.get(reverse('events'))

        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'events/events.html')
