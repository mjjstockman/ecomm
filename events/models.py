from django.db import models


class Event(models.Model):
    name = models.CharField(max_length=150)
    image = models.ImageField(upload_to='events')
    link = models.URLField(max_length=200)
    date = models.DateField(auto_now_add=False, auto_now=False, blank=True,
                            null=True)

    def __str__(self):
        return self.name
