from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static


urlpatterns = [
    path('admin/', admin.site.urls),
    path('summernote/', include('django_summernote.urls')),
    path('accounts/', include('allauth.urls')),
    # path('', include('allauth.urls')),
    path('', include('home.urls')),
    path('menu/', include('products.urls')),
    path('cart/', include('cart.urls')),
    path('checkout/', include('checkout.urls')),
    path('events/', include('events.urls')),
    path('profile/', include('profiles.urls')),
    path('faq/', include('faq.urls')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 

handler403 = 'ecommerce.views.handler403'
handler404 = 'ecommerce.views.handler404'
handler405 = 'ecommerce.views.handler405'
handler500 = 'ecommerce.views.handler500'
