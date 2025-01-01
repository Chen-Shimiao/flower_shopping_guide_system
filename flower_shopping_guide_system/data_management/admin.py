from django.contrib import admin
from .models import Category

@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'is_active', 'date_created')
    search_fields = ('name',)
    list_filter = ('is_active', 'date_created')
