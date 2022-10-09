from django.db.models.signals import pre_save
from django.dispatch import receiver

from .models import Question, Answer

@receiver(pre_save, sender=Question)
def faq_answered(sender, instance, **kwargs):
    # print(sender.objects.get(id=instance.id).status)
    # print(instance.status)
    print('dfsafdsafdsa')


# @receiver(post_save, sender=Question)
# def update_on_save(sender, instance, created, **kwargs):
#     """
#     Update order total on lineitem update/create
#     """
#     instance.order.update_total()

# @receiver(post_delete, sender=OrderLineItem)
# def update_on_save(sender, instance, **kwargs):
#     """
#     Update order total on lineitem delete
#     """
#     instance.order.update_total()