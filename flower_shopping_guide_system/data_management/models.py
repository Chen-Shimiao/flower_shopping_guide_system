from datetime import date, timedelta, datetime

from django.db import models


class Category(models.Model):
    name = models.CharField(max_length=100, unique=True, verbose_name="分类名称")
    description = models.TextField(blank=True, null=True, verbose_name="分类描述")
    date_created = models.DateTimeField(auto_now_add=True, verbose_name="创建日期")
    is_active = models.BooleanField(default=True, verbose_name="是否有效")

    class Meta:
        verbose_name = "分类"
        verbose_name_plural = "分类管理"
        ordering = ['-date_created']

    def __str__(self):
        return self.name


class Holiday(models.Model):
    name = models.CharField(max_length=100, unique=True, verbose_name="节日名称")
    date = models.DateField(blank=True, null=True, verbose_name="节日日期")
    description = models.TextField(blank=True, null=True, verbose_name="节日描述")
    is_active = models.BooleanField(default=True, verbose_name="是否有效")

    class Meta:
        verbose_name = "节日"
        verbose_name_plural = "节日管理"
        ordering = ['-date']

    def is_upcoming(self, days_ahead=30):
        """判断节日是否即将在未来指定天数内到来"""
        if self.date:
            today = date.today()
            return today <= self.date <= today + timedelta(days=days_ahead)
        return False

    def __str__(self):
        return self.name


class CategoryHoliday(models.Model):
    category = models.ForeignKey(Category, on_delete=models.CASCADE, related_name='holidays', verbose_name="分类")
    holiday = models.ForeignKey(Holiday, on_delete=models.CASCADE, related_name='categories', verbose_name="节日")
    priority = models.PositiveIntegerField(blank=True, null=True, verbose_name="优先级")

    class Meta:
        verbose_name = "分类与节日关系"
        verbose_name_plural = "分类与节日关系管理"
        unique_together = ('category', 'holiday')

    def __str__(self):
        return f"{self.category.name} - {self.holiday.name}"

class DataSource(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, null=False)
    url = models.URLField(max_length=255, null=False)
    STATUS_CHOICES = [
        ('active', 'Active'),
        ('inactive', 'Inactive'),
    ]
    status = models.CharField(max_length=8, choices=STATUS_CHOICES, default='active')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class RawProducts(models.Model):
        title = models.CharField(max_length=255)
        price = models.DecimalField(max_digits=10, decimal_places=2)
        deal = models.CharField(max_length=255, blank=True, null=True)
        location = models.CharField(max_length=255)
        shop = models.CharField(max_length=255)
        postText = models.CharField(max_length=255, null=True)
        title_url = models.URLField(max_length=3000)
        shop_url = models.URLField(max_length=3000)
        img_url = models.URLField(max_length=1000)
        style_1 = models.CharField(max_length=100, blank=True, null=True)
        style_2 = models.CharField(max_length=100, blank=True, null=True)
        style_3 = models.CharField(max_length=100, blank=True, null=True)
        create_time = models.DateTimeField(auto_now_add=True)

        def __str__(self):
            return self.title

class Shop(models.Model):
    name = models.CharField(max_length=100, verbose_name="店铺名称")
    website_url = models.URLField(max_length=3000)
    location = models.CharField(max_length=255)

    def __str__(self):
        return self.name

class FlowerPurpose(models.Model):
    name = models.CharField(max_length=100)  # 用途名称
    created_at = models.DateTimeField(auto_now_add=True)  # 创建时间

    def __str__(self):
        return self.name

class FlowerLocation(models.Model):
    name = models.CharField(max_length=100)
    created_at = models.DateTimeField(auto_now_add=True)  # 创建时间

    def __str__(self):
        return self.name



class NormalizedProduct(models.Model):
    id = models.AutoField(primary_key=True)
    source = models.ForeignKey('DataSource', on_delete=models.CASCADE, related_name='products')
    name = models.CharField(max_length=255, null=False)
    price = models.DecimalField(max_digits=10, decimal_places=2, null=False)
    post_free=models.BooleanField(default=0)
    image_url = models.URLField(max_length=255, blank=True, null=True)
    detail_url = models.URLField(max_length=255, null=False)
    created_at = models.DateTimeField(auto_now_add=True)
    location = models.ManyToManyField(FlowerLocation, related_name='locations')
    purpose = models.ManyToManyField(FlowerPurpose, related_name='purposes')  # 多对多关系
    category=models.ManyToManyField(Category,related_name='categories')
    shop=models.ForeignKey(Shop, on_delete=models.CASCADE, related_name='shop', verbose_name="店铺",null=True)

    def __str__(self):
        return self.name

