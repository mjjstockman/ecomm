from django import forms
from .widgets import CustomClearableFileInput
from .models import Product, Category, Fake


class ProductForm(forms.ModelForm):

    class Meta:
        model = Product
        fields = '__all__'

    image = forms.ImageField(label='Image', widget=CustomClearableFileInput)

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        categories = Category.objects.all()
        # friendly_names = [(c.id, c.get_friendly_name()) for c in categories]

        # self.fields['category'].choices = categories
        for field_name, field in self.fields.items():
            field.widget.attrs['class'] = 'border-black rounded-0'


class FakeForm(forms.ModelForm):

    class Meta:
        model = Fake
        fields = '__all__'