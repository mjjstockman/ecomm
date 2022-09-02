from django.shortcuts import render
from .models import Product


def all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()

    context = {
        'products': products,
    }

    return render(request, 'products/all.html', context)