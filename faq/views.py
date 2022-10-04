from django.shortcuts import render

def faq(request):
    return render(request, 'faq/faq.html')

def faq(request):
    """View setlist details
    """
    
    return render(request, 'setlist/detail.html', context)
