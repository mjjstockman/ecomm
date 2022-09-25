from django.shortcuts import render, redirect, reverse, get_object_or_404
from django.db.models import Q
from products.models import Product


def menu_all(request):
    # products = Product.get_object_or_404.all()
    products = Product.objects.all()
    # set below as None so query is defined if not set in request and therefore empty in context
    query = None

    # SEARCH BOX: form text input was named q, so check if q is in request.GET
    # check if request.get exists (if get param was sent in request from search form in nav, or when selecting category in nav)
    if request.GET:

        if 'q' in request.GET:
            query = request.GET['q']
            if not query:
                # messages.error(request, "You didn't enter any search criteria!")
                return redirect(reverse('products'))
            
            # set queries var to Q obj where name or description contains the query, case insensitive
            queries = Q(name__icontains=query) | Q(description__icontains=query)
            # use filter method with queries var passed to it
            products = products.filter(queries)
        
    context = {
        'products': products,
        'search_term': query,
    }

    return render(request, 'menu/menu-all.html', context)


# REMOVE ONCE USING PRODUCTS APP
def detail(request, product_id):
    """View setlist details
    """
    product = get_object_or_404(Product, pk=product_id)
    context = {
        'product': product
    }

    return render(request, 'menu/detail.html', context)
