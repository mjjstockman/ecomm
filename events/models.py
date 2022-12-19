from django.db import models


class Event(models.Model):
    name = models.CharField(max_length=150)
    image = models.ImageField(upload_to='events')
    link = models.URLField(max_length=200)

    def __str__(self):
        return self.name
 