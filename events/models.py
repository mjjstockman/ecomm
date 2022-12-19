from django.db import models


class Event(models.Model):
    name = models.CharField(max_length=150, null=True)
    image = models.ImageField(upload_to='events', null=True)
    link = models.URLField(max_length=200, null=True)

    def __str__(self):
        return self.name
 