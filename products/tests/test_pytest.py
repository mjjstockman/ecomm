import pytest
from products.models import Category


@pytest.fixture
def test_product_1(db):
    return Category.objects.create_product('Product 1')


@pytest.mxampleark.django_db
def test_set_category_price(product_1):
    product_1.set_name('Prod 1')
    assert product_1_name('Prod 1') is True
    
