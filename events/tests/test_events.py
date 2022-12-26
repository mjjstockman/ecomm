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


def test_canAddEventImg(event):
    event.addImg("media/product_images/Screenshot_2022-11-28_at_14.00.\
                  39_78nCoVz.png")
