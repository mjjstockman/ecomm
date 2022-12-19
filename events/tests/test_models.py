from django.test import TestCase
from events.models import Event


class TestModels(TestCase):

    def setUp(self):
        self.event = Event()

    def test_can_instantiate_an_event(self):
        self.assertIsInstance(self.event, Event)

    def test_can_add_an_event_name(self):
        self.event.name = 'Glasto'
        self.assertEqual(self.event.name, 'Glasto')

    def test_can_add_an_event_image(self):
        self.event.image = 'image'
        # assert 1 == 2
        self.assertEqual(self.event.image, 'image')