import pytest

@pytest.fixture
def setUp():
    print("Setting up")
    yield
    print("Tearing down")


@pytest.fixture(autouse=True)
def each_time():
    print("Autouse=True, runs each time")