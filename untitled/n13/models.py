from django.db import models

# Create your models here.

class kanal_data_table(models.Model):
    order_numb = models.IntegerField(primary_key=True)
    price_d = models.IntegerField()
    term = models.DateField()
    price_r = models.IntegerField()
