from django.contrib import admin
from .models import Category, Announcement, FlowerPurpose, Shop, DataSource, FlowerLocation, RawProducts,Holiday


@admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'is_active', 'date_created')
    search_fields = ('name',)
    list_filter = ('is_active', 'date_created')


@admin.register(Announcement)
class AnnouncementAdmin(admin.ModelAdmin):
    list_display = ('title', 'created_at', 'is_active')
    list_filter = ('is_active',)
    search_fields = ('title', 'content')
    list_editable = ('is_active',)
    ordering = ('-created_at',)



@admin.register(DataSource)
class DataSourceAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('name', 'url', 'status', 'created_at')
    # 设置筛选器，按照状态进行筛选
    list_filter = ('status',)
    # 设置搜索框，允许按数据源名称进行搜索
    search_fields = ('name',)
    # 排序设置，按创建时间降序排列
    ordering = ('-created_at',)

@admin.register(Shop)
class ShopAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('name', 'website_url', 'location')
    # 设置搜索框，允许按店铺名称进行搜索
    search_fields = ('name',)
    # 排序设置，按店铺名称升序排列
    ordering = ('name',)
    # 可以根据店铺名称进行过滤（如果有更多分类字段，可以添加在这里）
    list_filter = ('location',)  # 如果你希望按位置进行筛选

@admin.register(FlowerPurpose)
class FlowerPurposeAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('name', 'created_at')
    # 设置搜索框，允许按用途名称进行搜索
    search_fields = ('name',)
    # 排序设置，按创建时间降序排列
    ordering = ('-created_at',)
    # 可以通过创建时间进行过滤
    list_filter = ('created_at',)

@admin.register(FlowerLocation)
class FlowerLocationAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('name', 'created_at')
    # 设置搜索框，允许按位置名称进行搜索
    search_fields = ('name',)
    # 排序设置，按创建时间降序排列
    ordering = ('-created_at',)
    # 可以根据创建时间进行过滤
    list_filter = ('created_at',)

@admin.register(RawProducts)
class RawProductsAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('title', 'price', 'shop', 'location', 'create_time', 'deal')
    # 设置搜索框，允许按产品标题、店铺、位置进行搜索
    search_fields = ('title', 'shop', 'location')
    # 排序设置，按创建时间降序排列
    ordering = ('-create_time',)
    # 可以根据店铺和位置进行过滤
    list_filter = ('shop', 'location')
    # 设置可以编辑的字段
    list_editable = ('price', 'deal')

@admin.register(Holiday)
class HolidayAdmin(admin.ModelAdmin):
    # 在列表页面显示的字段
    list_display = ('name', 'date', 'is_active', 'description')
    # 设置筛选器，按照是否有效进行筛选
    list_filter = ('is_active',)
    # 设置搜索框，允许按节日名称进行搜索
    search_fields = ('name',)
    # 设置是否可以在列表页面直接编辑
    list_editable = ('is_active',)
    # 排序设置，按日期降序排列
    ordering = ('-date',)