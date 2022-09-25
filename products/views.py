from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib import messages
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
def detail(request, product_id):
    """View setlist details
    """
    product = get_object_or_404(Product, pk=product_id)
    context = {
        'product': product
    }

    return render(request, 'menu/detail.html', context)

@staff_member_required(login_url='/')
def add(request):
    """ Add a product to the store """
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            product = form.save()
            messages.success(request, 'Successfully added product!')
            return redirect(reverse('detail', args=[product.id]))
        else:
            messages.error(request, 'Failed to add product. Please ensure the form is valid.')
    else:
        form = ProductForm()
        
    template = 'products/add.html'
    context = {
        'form': form,
    }

    return render(request, template, context)



def edit(request, product_id):
    """ Edit a product in the store """
    product = get_object_or_404(Product, pk=product_id)
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES, instance=product)
        if form.is_valid():
            form.save()
            messages.success(request, 'Successfully updated product!')
            return redirect(reverse('product_detail', args=[product.id]))
        else:
            messages.error(request, 'Failed to update product. Please ensure the form is valid.')
    else:
        form = ProductForm(instance=product)
        messages.info(request, f'You are editing {product.name}')

    template = 'products/edit.html'
    context = {
        'form': form,
        'product': product,
    }

    return render(request, template, context)


# @staff_member_required(login_url='/')
# def delete(request, product_id):
#     """Allows the setlist author to delete the setlist
#     """
#     product = get_object_or_404(Product, pk=product_id)

#     if request.method == 'POST':
#         product.delete()
#         return redirect(reverse('products'))

#     context = {
#         'product': product,
#     }
#     return render(request, 'products/delete.html', context)

@staff_member_required(login_url='/')
def delete(request, product_id):
    """Allows the setlist author to delete the setlist
    """
    product = get_object_or_404(Product, pk=product_id)
    product.delete()
    messages.success(request, 'Product deleted!')
    return redirect(reverse('products'))

