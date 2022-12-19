from django.shortcuts import render
from .models import Event


def all(request):
    events = Event.objects.all()

    context = {
        'events': events,
    }

    return render(request, 'events/all.html', context)