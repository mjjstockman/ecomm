from django.shortcuts import render

def index(request):
    """ A view to return the index page

    Args:
        request (_type_): the request and template
    """

    return render(request, 'home/index.html')
