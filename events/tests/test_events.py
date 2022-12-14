from events.models import Event


def test_canAddEventName():
    event = Event()
    event.addName("Glasto")


def test_canAddEventLink():
    event = Event()
    event.addLink("https://tramlines.org.uk/")