from django.shortcuts import render
from .models import Event

def events_all(request):
    """
    Get all events and return template, or display a 'no events' message in the same page.
    """
    events = Event.objects.all()

    if not events.exists():
        message = "No events have been added yet."
    else:
        message = None

    context = {
        'events': events,
        'message': message,
    }

    return render(request, 'events/all.html', context)
