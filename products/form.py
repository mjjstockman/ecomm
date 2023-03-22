from django import forms
from .widgets import CustomClearableFileInput
from .models import Product, Category


class ProductForm(forms.ModelForm):
    """
    Model form for product info.
    """
    short_description = forms.CharField(widget=forms.Textarea(
                                        attrs={'rows': 1}))
    description = forms.CharField(widget=forms.Textarea(attrs={'rows': 2}))

    class Meta:
        model = Product
        fields = [
            "image",
            "name",
            "short_description",
            "description",
            "category",
            "price",
        ]

    image = forms.ImageField(label="Image", widget=CustomClearableFileInput)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        categories = Category.objects.all()

        for field_name, field in self.fields.items():
            field.widget.attrs["class"] = "thin-border"
