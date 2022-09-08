from django.shortcuts import render
from products.models import Product


def menu_all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products
    }

    return render(request, 'menu/menu-all.html', context)
