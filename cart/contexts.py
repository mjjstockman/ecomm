from django.shortcuts import get_object_or_404
from products.models import Product


def cart_contents(request):
    """
    Make cart_items, total and product_count available to all apps.
    """
    cart_items = []
    total = 0
    product_count = 0
    cart = request.session.get('cart', {})

    for item_id, item_data in cart.items():
        product = get_object_or_404(Product, pk=item_id)
        total += item_data * product.price
        product_count += item_data
        cart_items.append({
            'item_id': item_id,
            'quantity': item_data,
            'product': product,
        })

    context = {
        'cart_items': cart_items,
        'total': total,
        'product_count': product_count,
    }

    return context
