from django.shortcuts import render, redirect, reverse, HttpResponse, get_object_or_404
from django.contrib import messages
from products.models import Product


def view_cart(request):
    """ A view that renders the cart contents page """

    return render(request, 'cart/cart.html')


def add_to_cart(request, item_id):
    """ Add a quantity of the specified product to the shopping cart """
    product = get_object_or_404(Product, pk=item_id)
    # quantity will be a str from template so convert to int
    quantity = int(request.POST.get('quantity'))
    redirect_url = request.POST.get('redirect_url')
    # create a session
    # if cart var exists add to session, if not make new cart dict
    cart = request.session.get('cart', {})

    # if cart dict already contains the item_id...
    if item_id in list(cart.keys()):
        # ... increment quantity
        cart[item_id] += quantity
        messages.success(
            request,
            f'Updated { product.name } quantity to {cart[item_id]}')
    else:
        # or add the item_id with quantity
        cart[item_id] = quantity
        messages.success(request, f'Added { product.name } to your cart')

    # add cart to session
    request.session['cart'] = cart
    # print(request.session['cart'])
    return redirect(redirect_url)


def adjust_cart(request, item_id):
    """ Add a quantity of the specified product to the shopping cart """
    product = get_object_or_404(Product, pk=item_id)
    quantity = int(request.POST.get('quantity'))

    cart = request.session.get('cart', {})

    if quantity > 0:
        cart[item_id] = quantity
        messages.success(
            request,
            f'Updated { product.name } quantity to your cart')
    else:
        cart.pop(item_id)
        messages.success(
            request,
            f'Removed { product.name } quantity to your cart')

    request.session['cart'] = cart

    return redirect(reverse('view_cart'))


def remove_from_cart(request, item_id):
    try:
        product = get_object_or_404(Product, pk=item_id)
        cart = request.session.get('cart', {})
        cart.pop(item_id)
        messages.success(request, f'Removed { product.name } from your cart')

        request.session['cart'] = cart
        return HttpResponse(status=200)

    except Exception as e:
        messages.error(request, f'Error removing item {e}')
        return HttpResponse(status=500)
