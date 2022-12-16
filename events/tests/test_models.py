from django.test import TestCase
from events.models import Event


class TestModels(TestCase):

    def test_can_instantiate_an_event(self):
        self.event = Event()
        self.assertIsInstance(self.event, Event)

    def test_can_add_an_event_name(self):
        self.event = Event()
        self.event.name = 'Glasto'
        self.assertEqual(self.event.name, 'Glasto')

