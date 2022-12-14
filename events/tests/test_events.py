from events.models import Event


def test_canAddEventName():
    event = Event()
    event.addName("Glasto")