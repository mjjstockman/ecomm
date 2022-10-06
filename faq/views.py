from django.shortcuts import render
from .forms import QuestionForm

def view_faq(request):

    form = QuestionForm()
    
    if request.method == 'POST':
        form = QuestionForm(request.POST)
        if form.is_valid():
            form.save()


    context = {
        'form': form
    }
    return render(request, 'faq/view_faq.html', context)

