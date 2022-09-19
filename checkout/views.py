from django.shortcuts import render, redirect, reverse
from django.contrib import messages
from django.conf import settings
from cart.contexts import cart_contents
from .forms import OrderForm

import stripe


def checkout(request):
    cart = request.session.get('cart', {})
    if not cart:
        messages.error(request, "There's nothing in your cart at the moment")
        return redirect(reverse('products'))

    # make new var so don't overwrite cart var
    current_cart = cart_contents(request)
    total = current_cart['total']
    # stripe needs amount as an int
    stripe_total = round(total * 100)

    order_form = OrderForm()
    template = 'checkout/checkout.html'
    context = {
        'order_form': order_form,
        'stripe_public_key': 'pk_test_51LYvuADEsL3QJnnRm4jb2tQvHgIAE7hvdqd9ZqrJoydkI9edvSIhgo7jvm9uCKZpnZRx4WtAP4sbxfjmU6pdSnTL00sabpg8HF',
        'client_secret': 'test client secret',
    }

    return render(request, template, context)