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


def edit(request, pk):
    """Allows authors to edit their setlists
    """
    product = Product.objects.get(id=pk)
    form = ProductForm(instance=product)

    if request.method == 'POST':
        form = ProductForm(request.POST, instance=product)
        if form.is_valid():
            form.save()
            return redirect('/')

    context = {
        'form': form,
    }
    return render(request, 'products/add.html', context)


def delete(request, pk):
    """Allows the setlist author to delete the setlist
    """
    product = Product.objects.get(id=pk)

    if request.method == 'POST':
        product.delete()
        return redirect('/')

    context = {
        'product': product,
    }
    return render(request, 'products/delete.html', context)