from django.shortcuts import render, redirect
from django.contrib.admin.views.decorators import staff_member_required
# from django.contrib.auth.decorators import user_passes_test
from .models import Product
from .form import ProductForm


@staff_member_required
def all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products
    }

    return render(request, 'products/all.html', context)


@staff_member_required
def add(request):
    form = ProductForm()

    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/')

    context = {
        'form': form
    }

    return render(request, 'products/add.html', context)


@staff_member_required
def edit(request, pk):
    product = Product.objects.get(id=pk)
    form = ProductForm(instance=product)

    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES, instance=product)
        if form.is_valid():
            form.save()
            return redirect('/')

    context = {
        'form': form,
    }
    return render(request, 'products/add.html', context)


@staff_member_required
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