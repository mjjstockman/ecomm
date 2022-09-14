from django.shortcuts import render, redirect, reverse


def view_cart(request):
    """ A view that renders the cart contents page """

    return render(request, 'cart/cart.html')


def add_to_cart(request, product_id):
    """ Add a quantity of the specified product to the shopping cart """

    # quantity will be a str from template so convert to int
    quantity = int(request.POST.get('quantity'))
    redirect_url = request.POST.get('redirect_url')
    # create a session
    # if cart var exists add to session, if not make new cart dict
    cart = request.session.get('cart', {})

    # if cart dict already contains the item_id...
    if product_id in list(cart.keys()):
        # ... increment quantity
        cart[product_id] += quantity
    else:
        # or add the item_id with quantity
        cart[product_id] = quantity

    # add cart to session
    request.session['cart'] = cart
    # print(request.session['cart'])
    return redirect(redirect_url)


def adjust_cart(request, item_id):
    """ Add a quantity of the specified product to the shopping cart """

    quantity = int(request.POST.get('quantity'))

    # create a session
    # if cart var exists add to session, if not make new cart dict
    cart = request.session.get('cart', {})

    if quantity > 0:
        cart[item_id] = quantity
    else:
        cart.pop[item_id]

    # add cart to session
    request.session['cart'] = cart
    # print(request.session['cart'])
    return redirect(reverse('view_cart'))
