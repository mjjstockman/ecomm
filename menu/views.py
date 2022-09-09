from django.shortcuts import render, get_object_or_404
from products.models import Product


def menu_all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products
    }

    return render(request, 'menu/menu-all.html', context)


def detail(request, pk):
    """View setlist details
    """
    product = get_object_or_404(Product, id=pk)
    context = {
        'product': product
    }

    return render(request, 'menu/detail.html', context)
