from django.test import TestCase


class TestModels(Test):

    def test_can_instantiate_an_event(self):
        self.event = Event.objects.create
        self.assertIsInstance(self.event, event)

