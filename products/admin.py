from django.contrib import admin
from .models import Product, Category

# not used as currently displaying all fields in admin.  Change/delete later
class ProductAdmin(admin.ModelAdmin):
    list_display = ('short_description','name')

    # add if want to sort order
    # ordering = ('',)

admin.site.register(Product, ProductAdmin)
admin.site.register(Category)

# if using ProductAdmin class above...
# admin.site.register(Product, ProductAdmin)
