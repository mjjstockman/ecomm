# Manual Testing

## Sign up using email, username and password 
## [Issue #15](https://github.com/mjjstockman/ecomm/issues/15)

The Signup page shows the following form

<img src="images/us-15/form-empty.png" alt="Signup form with e-mail, e-mail again, username, password and password again fields">


Form validation

<img src="images/us-15/form-invalid.png" alt="Signup form with invalid e-mail and username fields highlited in red with an error descriptionand red info icon">


Missing info

<img src="images/us-15/form-no-password.png" alt="Signup form with missing password field warning">

Once filled in correctly...

<img src="images/us-15/form-complete.png" alt="Signup form with all fields correctly entered, shows no warning signs">


User shown success message and informed to verify email

<img src="images/us-15/verify-email-message.png" alt="Email sent message, asking user to check their email">


## Confirm Sign up via email
## [Issue #17](https://github.com/mjjstockman/ecomm/issues/17) 

User recieves an email

<img src="images/us-17/email.png" alt="The email a user recieves when they signup">


If user trys to login before confirming email

<img src="images/us-17/email-sent.png" alt="Message telling the user they need to confirm their email">


## Sign up using Google
## [Issue #16](https://github.com/mjjstockman/ecomm/issues/16)
!!!!!!!!!!!!!!!!!!CHANGE TO LOGIN WITH GOOGLE ISSUE 19 !!!!!!!!!!!!!!!!!!
Google Login button

<img src="images/us-16/google-login-button.png" alt="Login page with a button to login with Google">

Google choose account

<img src="images/us-16/google-choose-account.png" alt="General signin with Google, choose account page">

Google signin success

<img src="images/us-16/google-signin-success.png" alt="Message telling the user they successfully signed in">

## Log in using username / password
## [Issue #18](https://github.com/mjjstockman/ecomm/issues/18)

Login form

<img src="images/us-18/login-form.png" alt="Message telling the user they successfully signed in">

Login form incorrect details

<img src="images/us-18/login-wrong-details.png" alt="Message telling the user login info is not found">

Logged in message

<img src="images/us-18/loggedin-message.png" alt="Message telling the user they successfully signed in">


!!!!!!!!!!!!!!!!!!CHANGE SEE ISSUE 16!!!!!!!!!!!!!!!!!!!
## Login Google
## [Issue ...........](https://github.com/mjjstockman/ecomm/issues/19)

Login form

<img src="images/us-18/login-form.png"  alt="Login form with username and asterisked out password filled in">

Signedin message

<img src="images/us-19/signedin-message.png"  alt="Message telling the user they successfully signed in">


## Forgot password
## [Issue #20](https://github.com/mjjstockman/ecomm/issues/20)

Password reset form

<img src="images/us-20/password-reset-form.png" alt="Form for user to enter their email and a button to reset password">

Password reset message

<img src="images/us-20/email-sent.png" alt="Message telling the user they have recieved an email">

User recieves email

<img src="images/us-20/email.png" alt="The email a user gets sent">

New password form

<img src="images/us-20/change-password-form.png" alt="Form to enter password twice">

Password changed message

<img src="images/us-20/success-message.png" alt="Message telling the user their password has been changed">

## Login state
## [Issue #21](https://github.com/mjjstockman/ecomm/issues/21)

nav-anonm

<img src="images/us-21/nav-anonymous.png" alt="Navigation bar with Sign Up and Login links at the far right">

nav-loggedin

<img src="images/us-21/nav-loggedin.png" alt="Navigation bar without Sign Up and Login links but a Logout link at the far right">

loggedin-msg

<img src="images/us-21/login-success-message.png" alt="Message telling the user they successfully signed in">


## Manual logout
## [Issue #22](https://github.com/mjjstockman/ecomm/issues/22)

Logout success message

<img src="images/us-22/logout-success-message.png" alt="Message telling the user they successfully signeded out">


## Add products through admin
## [Issue #24](https://github.com/mjjstockman/ecomm/issues/24)

Products in admin before

<img src="images/us-24/product-admin-before.png" alt="Products admin model showing short description and name for all 11 products">

Products in admin after

<img src="images/us-24/product-admin-after.png" alt="Products admin model showing newly added product">

Products on site before

<img src="images/us-24/menu-before.png" alt="Three burgers on the menu page">

Products on site after

<img src="images/us-24/menu-after.png" alt="Newly added product in the burger menu">


## View all products
## [Issue #25](https://github.com/mjjstockman/ecomm/issues/25)

All products on menu page

<img src="images/us-25/menu.png" alt="Menu showing all items">

## View products by category
## [Issue #26](https://github.com/mjjstockman/ecomm/issues/26)


Bratwurts

<img src="images/us-26/menu-brat.png" alt="Bratwurst menu">

Chicken

<img src="images/us-26/menu-chicken.png" alt="Chicken menu">

Burgers

<img src="images/us-26/menu-burgers.png" alt="Burgers menu">



## Search products
## [Issue #59](https://github.com/mjjstockman/ecomm/issues/59)

Searching for the term "special"

<img src="images/us-59/searchbar.png" alt="Search bar in navigation with special entered">

Products including the term "special"

<img src="images/us-59/special-products.png" alt="Menu only showing items that include the word special">

Searches are case insnesitive

<img src="images/us-59/multicase-searchbar.png" alt="Menu only showing items that include the word special">

Searches within long desctiption as well

<img src="images/us-59/basil-product.png" alt="Menu only showing items that include the word special">

## Edit products through admin
## [Issue #37](https://github.com/mjjstockman/ecomm/issues/37)

Products shown on site before editing a product through admin

<img src="images/us-37/menu-before-edit.png" alt="Burger menu with an unedited product">

Product admin edit form

<img src="images/us-37/menu-admin-edit-form.png" alt="Django admin change product form with edited fields">


Products shown on site after editing a product through admin

<img src="images/us-37/menu-after-edit.png" alt="Burger menu showing the edited changes to a product">



## Edit products through site
## [Issue #27](https://github.com/mjjstockman/ecomm/issues/27)


Product before editing through site

<img src="images/us-27/before-site-edit.png" alt="Product image and info before editing through site">

Product edit form on site

<img src="images/us-27/edit-site-form-before.png" alt="Form showing all product fields pre-filled with values">

Completed Product edit form on site

<img src="images/us-27/edit-site-form-complete.png" alt="Form showing all product fields with new values">

Successful Product edit confirmation

<img src="images/us-27/edit-site-confirmation.png" alt="Successfuly updated product message with newly edited product info">

Product after editing through site

<img src="images/us-27/after-site-edit.png" alt="Product image and info after editing through site">


## Delete product through site
## [Issue #28](https://github.com/mjjstockman/ecomm/issues/28)


Menu before deleting product through site
<img src="images/us-28/menu-before-site-delete.png" alt="Menu including test product">


Confirm Product deletion

<img src="images/us-28/confirm-site-deletion.png" alt="Message asking user to confrim deletion">

Product deletion message

<img src="images/us-28/site-deletion-confirmed.png" alt="Successfuly deleted product image">

Menu after deleting product through site
<img src="images/us-28/menu-after-site-delete.png" alt="Menu showing product has been deleted">


## Add product to cart
## [Issue #29](https://github.com/mjjstockman/ecomm/issues/29)

Nav cart empty

<img src="images/us-29/nav-cart-empty.png" alt="Navigation bar with Cart link showing £0">

Cart empty

<img src="images/us-29/cart-empty.png" alt="User informed their cart is empty">

Nav cart with item

<img src="images/us-29/nav-cart-item.png" alt="Navigation bar with Cart link showing £8">

Cart with item

<img src="images/us-29/cart-with-item.png" alt="Cart page with product added">


## Change cart quantities
## [Issue #30](https://github.com/mjjstockman/ecomm/issues/30)

Cart before

<img src="images/us-29/cart-with-item.png" alt="Cart page with one Double Pig added">

Update quantity

<img src="images/us-30/update-quantity.png" alt="Cart page with two Double Pigs added">

Update quantity success message

<img src="images/us-30/updated-quantity-success-message.png" alt="Message showing the updated quantity">


## Remove from cart
## [Issue #31](https://github.com/mjjstockman/ecomm/issues/31)

Cart before

<img src="images/us-31/cart-before.png" alt="Cart page with two Double Pigs and a remove link">

Cart after removing Double Pigs

<img src="images/us-31/cart-removed.png" alt="Message informing user Double Pig has been removed from cart and an empty cart">


## See total cost when placing / confirming order
## [Issue #32](https://github.com/mjjstockman/ecomm/issues/32)


Total cost when placing order

<img src="images/us-30/update-quantity.png" alt="Cart page with cart total">


Total cost when confirming order

<img src="images/us-32/show-cost-checkout.png" alt="Conform order page with cart total">


## Pay for goods
## [Issue #33](https://github.com/mjjstockman/ecomm/issues/33)

Payment form

<img src="images/us-33/payment-form.png" alt="">

Payment form complete

<img src="images/us-33/payment-form-complete.png" alt="Conform order page with cart total">


## Know if an order was successful
## [Issue #34](https://github.com/mjjstockman/ecomm/issues/34)

Order confirmation sent

<img src="images/us-33/order-confirmation-email-sent.png" alt="Thany you confirming order info">

Order success message

<img src="images/us-33/order-success-message.png" alt="Message informing user their order was successful">

## Email order confirmation
## [Issue #35](https://github.com/mjjstockman/ecomm/issues/35)

Email sent confirming order

<img src="images/us-35/email-order-confirmation.png" alt="Email confirming order">

## Facebook page
## [Issue #36](https://github.com/mjjstockman/ecomm/issues/36)

Facebook page

<img src="images/us-36/facebook-top.png" alt="Get Wurst's Facebook page">

Facebook page shows business info

<img src="images/us-36/facebook-intro.png" alt="Get Wurst's Facebook intro info">


## Save profile info
## [Issue #40](https://github.com/mjjstockman/ecomm/issues/40)

No profile info saved

<img src="images/us-40/empty-profile-form.png" alt="Profile form with no info saved">

Completed profile form

<img src="images/us-40/complete-profile-form.png" alt="Profile form with new info">

Profile updated message

<img src="images/us-40/profile-updated-message.png" alt="Message confirming profile was updated">

New profile info

<img src="images/us-40/updated-profile-info.png" alt="Profile with updated info"> 

## Edit profile info
## [Issue #41](https://github.com/mjjstockman/ecomm/issues/41)

Profile before editing

<img src="images/us-41/old-profile-info.png" alt="Profile form with profile info">

Completed edit profile form with new values

<img src="images/us-41/profile-info-form-complete.png" alt="Profile form with new profile info">

Profile updated message

<img src="images/us-41/profile-updated-message.png" alt="Profile successfully added message">

New profile info

<img src="images/us-41/profile-info-updated.png" alt="Form showing new profile info">

## View order history
## [Issue #42](https://github.com/mjjstockman/ecomm/issues/42)

View order history

<img src="images/us-42/order-history.png" alt="Users order history with orfer number, date, items and order total">

Order history detail

<img src="images/us-42/order-history-detail.png" alt="Detailed info on precious order">

## Submit an question
## [Issue #43](https://github.com/mjjstockman/ecomm/issues/43)

Logged in user can submit a question

<img src="images/us-43/question-form-complete.png" alt="Get Wurst's Facebook intro info">

Duplicate questions are not allowed

<img src="images/us-43/duplicate-question.png" alt="Get Wurst's Facebook intro info">

Anonymous users cannot submit a question.

<img src="images/us-43/faq-anon.png" alt="Get Wurst's Facebook intro info">

User submitted questions have default submitted status value

<img src="images/us-43/user-question-default.png" alt="Get Wurst's Facebook intro info">

Staff submitted questions have default published status value

<img src="images/us-43/staff-question-admin.png" alt="Get Wurst's Facebook intro info">

Questions with submitted status value are not shown on the site

<img src="images/us-43/questions-only-approved.png" alt="Get Wurst's Facebook intro info">

Six questions in admin, but only five are published

<img src="images/us-43/six-questions-admin.png" alt="Get Wurst's Facebook intro info">

Staff can change question status to published 

<img src="images/us-43/publish-user-admin.png" alt="Get Wurst's Facebook intro info">

This adds the question to the site

<img src="images/us-43/all-questions.png" alt="Get Wurst's Facebook intro info">



## Submit an answer
## [Issue #44](https://github.com/mjjstockman/ecomm/issues/44)


Logged in user can submit an answer

<img src="images/us-44/user-answer-form.png" alt="Get Wurst's Facebook intro info">

Non-logged in user cannot submit an answer and are promted to either Login or Sign Up

<img src="images/us-44/anon-no-form.png" alt="Get Wurst's Facebook intro info">

User submitted answers have default submitted status value

<img src="images/us-44/admin-user-default.png" alt="Get Wurst's Facebook intro info">

Staff submitted answers have default published status value

<img src="images/us-44/admin-staff-default.png" alt="Get Wurst's Facebook intro info">

Answers with submitted status value are not shown on the site. There are 2 answers in answers admin
for "question for test"

<img src="images/us-44/admin-1-published.png" alt="Get Wurst's Facebook intro info">

However only 1 is published so the other does not show.

<img src="images/us-44/1-answer.png" alt="Get Wurst's Facebook intro info">

When staff change other answer to published both answers can be seen.

<img src="images/us-44/2-answers.png" alt="Get Wurst's Facebook intro info">


## View past events
## [Issue #45](https://github.com/mjjstockman/ecomm/issues/45)

The events page shows some events Get Wurst have worked at, with an image, the date
and a link to the events official page.

<img src="images/us-45/events.png" alt="Get Wurst's Facebook intro info">



## Email when question asnwered
## [Issue #46](https://github.com/mjjstockman/ecomm/issues/46)

User can check the checkbox underneath the question field if they wish to recieve an email when
their question gets an approved answer.

<img src="images/us-46/user-question-with-email.png" alt="Get Wurst's Facebook intro info">

The email a user will recieve.

<img src="images/us-46/question-answered-email.png" alt="Get Wurst's Facebook intro info">


## Can like/unlike answer
## [Issue #60](https://github.com/mjjstockman/ecomm/issues/60)

Logged in user has a thumb icon they can click to like an answer.

<img src="images/us-60/answers-no-like.png" alt="Get Wurst's Facebook intro info">

Once cliked the thumb icon and the number of likes changes

<img src="images/us-60/answer-liked.png" alt="Get Wurst's Facebook intro info">

If clicked again the thumb icon and the number of likes changes back

<img src="images/us-60/answer-unliked.png" alt="Get Wurst's Facebook intro info">


# Automated Testing

A small portion of the site was created using Test Driven Behaviour.

//////////////////////////////
PRODUCTS MODELS

from django.test import TestCase
from .models import Category, Product


class TestModels(TestCase):
    def test_product_has_a_category(self):
        category1 = Category.objects.create(name='Category 1')
        product1 = Product.objects.create(
            name='Product 1',
            short_description='Prod 1 description',
            description='Prod 1 full description',
            price=1,
            image='media/product_images/test1.png',
            # product1.caterogy=category1,
            category=self.category1
        )

///////////////////////////

PRODUCTS FORMS
# from django.test import TestCase, Client
# from django.core.files.uploadedfile import SimpleUploadedFile
# from products.form import FakeForm
# from products.models import Category


class TestFakeForm(TestCase):
    def setUp(self):
        self.client = Client()
        self.category1 = Category.objects.create(
            name='Category 1',
        )

    def test_fake_form_valid_data(self):
        form = FakeForm(data={
            'name': 'Fake Name 1',
            'category': self.category1,
            'image': SimpleUploadedFile('file.jpg', b"file_content",
                                        content_type='image/jpeg')
        })

        self.assertTrue(form.is_valid())

    /////////////////////

PRODUCT URLS

    # import unittest
# from django.urls import reverse, resolve
# from products.views import all, detail, add, edit, delete


# class TestUrls(unittest.TestCase):

#     def test_products_url_resolves(self):
#         url = reverse('products')
#         self.assertEqual(resolve(url).func, all)

#     def test_product_detail_url_resolves(self):
#         url = reverse('product_detail', args=[1])
#         self.assertEqual(resolve(url).func, detail)

#     def test_add_product_url_resolves(self):
#         url = reverse('add_product')
#         self.assertEqual(resolve(url).func, add)

#     def test_product_edit_url_resolves(self):
#         url = reverse('edit_product', args=[1])
#         self.assertEqual(resolve(url).func, edit)

#     def test_product_delete_url_resolves(self):
#         url = reverse('delete_product', args=[1])
#         self.assertEqual(resolve(url).func, delete)

///////////////////////////

PRODUCT VIEWS

# import unittest
# from django.urls import reverse
# from django.test import TestCase, Client
# from products.models import Category, Product


# class TestViews(TestCase):

#     def setUp(self):
#         self.client = Client()
#         self.category1 = Category.objects.create(
#             name = 'Category 1',
#         )
#         self.products_url = reverse('products')
#         self.products_detail_url = reverse('product_detail', args=[1])
#         self.products_edit_url = reverse('edit_product', args=[1])
#         self.products_delete_url = reverse('delete_product', args=[1])
#         self.product1 = Product.objects.create(
#             name = 'Product 1',
#             short_description = 'Prod 1 description',
#             description = 'Prod 1 full description',
#             price = 1,
#             image = 'media/product_images/test1.png',
#             category = self.category1
#         )

#     def tearDown(self):
#         self.category1.delete()


#     def test_products_all_GET(self):
        
#         response = self.client.get(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertTemplateUsed('products/all.html')


#     def test_products_detail_GET(self):
       
#         response = self.client.get(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertTemplateUsed('products/detail.html')


#     needed as used in setup???
#     def test_products_add_POST_adds_new_product(self):
       
#         response = self.client.post(self.products_url)

#         self.assertEqual(response.status_code, 200)
#         self.assertEqual(self.product1.name, 'Product 1')
#         self.assertEqual(self.product1.category, 'Category 1')
#         self.assertTemplateUsed('products/add.html')


#     def test_products_edit_POST_edits_product(self):

#         self.product1.name = 'Edited Product Name'
       
#         response = self.client.post(self.products_edit_url, {
#             'name': 'Edited Product Name'
#         })

#         self.assertEqual(response.status_code, 302)
#         self.assertEqual(self.product1.name, 'Edited Product Name')
#         self.assertTemplateUsed('products/add.html')

#     def test_products_delete_POST_deletes_product(self):

#         self.product1.delete()
        
#         response = self.client.post(self.products_delete_url)

#         self.assertEqual(response.status_code, 302)
#         self.assertEqual(Product.objects.count(), 0)

////////////////////////

FAQ URLS

# from django.test import SimpleTestCase
# from django.urls import reverse, resolve
# from faq.views import faq


# class TestUrls(SimpleTestCase):

#     def test_faq_url_resolves(self):
#         url = reverse('faq')
#         self.assertEqual(resolve(url).func, faq)


/////////////////

EVENTS. test_events.py

import pytest
from events.models import Event


@pytest.fixture()
def event():
    event = Event()
    return event


def test_canAddEventName(event):
    event.addName("Glasto")


def test_canAddEventLink(event):
    event.addLink("https://tramlines.org.uk/")


def test_canAddEventImg(event):
    event.addImg("media/product_images/Screenshot_2022-11-28_at_14.00.\
                  39_78nCoVz.png")


///////////////////

EVENTS MODELS

from django.test import TestCase
from events.models import Event


class TestModels(TestCase):

    def setUp(self):
        self.event = Event()

    def test_can_instantiate_an_event(self):
        self.assertIsInstance(self.event, Event)

    def test_can_add_an_event_name(self):
        self.event.name = 'Glasto'
        self.assertEqual(self.event.name, 'Glasto')

    def test_can_add_an_event_image(self):
        self.event.image = 'image'
        # assert 1 == 2
        self.assertEqual(self.event.image, 'image')


///////////////////////

EVENTS URLs

from django.test import SimpleTestCase
from django.urls import reverse, resolve
from events.views import events


class TestUrls(SimpleTestCase):

    def test_events_url_is_resolved(self):
        url = reverse('events')
        self.assertEqual(resolve(url).func, events)


/////////////////////

EVENTS VIEWS

from django.test import TestCase, Client
from django.urls import reverse


class TestViews(TestCase):

    def test_events_view(self):
        client = Client()

        response = client.get(reverse('events'))

        self.assertEqual(response.status_code, 200)
        self.assertTemplateUsed(response, 'events/events.html')
