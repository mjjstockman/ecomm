from django.shortcuts import render, redirect
from .models import Product
from .form import ProductForm


def all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products
    }

    return render(request, 'products/all.html', context)


def add(request):
    form = ProductForm()

    if request.method == 'POST':
        form = ProductForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/')

    context = {
        'form': form
    }

    return render(request, 'products/add.html', context)