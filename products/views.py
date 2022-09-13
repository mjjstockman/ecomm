from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.contrib.admin.views.decorators import staff_member_required
# from django.contrib.auth.decorators import user_passes_test
from .models import Product
from .form import ProductForm


@staff_member_required(login_url='/')
def all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products
    }

    return render(request, 'products/all.html', context)


@staff_member_required(login_url='/')
def add(request):
    form = ProductForm()

    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            # use reverse instead
            return redirect(reverse('products'))

    context = {
        'form': form
    }

    return render(request, 'products/add.html', context)


@staff_member_required(login_url='/')
def edit(request, product_id):
    product = get_object_or_404(Product, pk=product_id)
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


@staff_member_required(login_url='/')
def delete(request, product_id):
    """Allows the setlist author to delete the setlist
    """
    product = get_object_or_404(Product, pk=product_id)

    if request.method == 'POST':
        product.delete()
        return redirect('/')

    context = {
        'product': product,
    }
    return render(request, 'products/delete.html', context)