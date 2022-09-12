from django.shortcuts import render, redirect


def view_cart(request):
    """ A view that renders the cart contents page """

    return render(request, 'cart/cart.html')


def add_to_cart(request, pk):
    """ Add a quantity of the specified product to the shopping cart """

    # quantity will be a str from template so convert to int
    quantity = int(request.POST.get('quantity'))
    redirect_url = request.POST.get('redirect_url')
    # create a session
    # if cart var exists add to session, if not make new cart dict
    cart = request.session.get('cart', {})

    # if cart dict already contains the item_id...
    if pk in list(cart.keys()):
        # ... increment quantity
        cart[pk] += quantity
    else:
        # or add the item_id with quantity
        cart[pk] = quantity

    # add cart to session
    request.session['cart'] = cart
    return redirect(redirect_url)
