from django.contrib import admin

# Register your models here.
from .models import ContactMessage,UserProfile

@admin.register(ContactMessage)
class ContactMessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'email', 'created_at')
    search_fields = ('name', 'email')
    list_filter = ('created_at',)

@admin.register(UserProfile)
class UserProfileAdmin(admin.ModelAdmin):
    # 定义显示在用户列表页的字段
    list_display = ('id', 'username', 'email', 'phone', 'is_active', 'is_staff', 'is_superuser')
    list_filter = ('is_active', 'is_staff', 'is_superuser')
    search_fields = ('username', 'email', 'phone')
    ordering = ('id',)
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': (
            'username', 'email', 'phone', 'password1', 'password2', 'is_active', 'is_staff', 'is_superuser'),
        }),
    )
    filter_horizontal = ()