from django.shortcuts import (
    render,
    redirect,
    reverse,
    get_object_or_404,
    get_list_or_404,
)

from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.db.models import Q
from .models import Product, Category
from .form import ProductForm


def all(request):
    """
    View for all products.
    """
    products = Product.objects.all()
    cart = request.session.get("cart", {})
    query = None
    categories = None

    if request.GET:
        if "category" in request.GET:
            categories = request.GET["category"].split(",")
            products = products.filter(category__name__in=categories)
            categories = Category.objects.filter(name__in=categories)

        if "q" in request.GET:
            query = request.GET["q"]
            if not query:
                messages.error(
                    request, "You didn't enter any search criteria!"
                )
                return redirect(reverse("products"))

            queries = (Q(name__icontains=query) |
                       Q(description__icontains=query))
            products = products.filter(queries)

            if not products:
                messages.error(request, "NO ITEMS!!!")
                return redirect(reverse("products"))

    context = {
        "products": products,
        "search_term": query,
        "current_categories": categories,
        "cart": cart,
    }

    return render(request, "products/all.html", context)


def detail(request, product_id):
    """
    View product details.
    """
    product = get_object_or_404(Product, pk=product_id)
    context = {"product": product}

    return render(request, "products/detail.html", context)


@login_required
def add(request):
    """
    Add a product to the store.
    """
    if not request.user.is_superuser:
        messages.error(request, "Sorry, only store owners can do that.")
        return redirect(reverse("home"))

    if request.method == "POST":
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            product = form.save()
            messages.success(request, "Successfully added product!")
            return redirect(reverse("product_detail", args=[product.id]))
        else:
            messages.error(
                request,
                "Failed to add product. Please ensure the form is \
                          valid.",
            )
    else:
        form = ProductForm()

    template = "products/add.html"
    context = {
        "form": form,
    }

    return render(request, template, context)


@login_required
def edit(request, product_id):
    """
    Allows a logged in superuser to edit a product from the store.
    """
    if not request.user.is_superuser:
        messages.error(request, "Sorry, only store owners can do that.")
        return redirect(reverse("home"))

    product = get_object_or_404(Product, pk=product_id)
    if request.method == "POST":
        form = ProductForm(request.POST, request.FILES, instance=product)
        if form.is_valid():
            form.save()
            messages.success(request, "Successfully updated product!")
            return redirect(reverse("product_detail", args=[product.id]))
        else:
            messages.error(
                request,
                "Failed to update product. Please ensure the form is \
                          valid.",
            )
    else:
        form = ProductForm(instance=product)

    template = "products/edit.html"
    context = {
        "form": form,
        "product": product,
    }

    return render(request, template, context)


@login_required
def delete(request, product_id):
    """
    Allows a logged in superuser to delete a product from the store.
    """
    if not request.user.is_superuser:
        messages.error(request, "Sorry, only store owners can do that.")
        return redirect(reverse("home"))

    product = get_object_or_404(Product, pk=product_id)
    product.delete()
    messages.success(request, "Product deleted!")
    return redirect(reverse("products"))
