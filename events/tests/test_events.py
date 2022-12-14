import pytest
from events.models import Event


@pytest.fixture()
def event():
    event = Event()
    return event


def test_canAddEventName(event):
    event.addName("Glasto")


def test_canAddEventLink(event):
    event.addLink("https://tramlines.org.uk/")