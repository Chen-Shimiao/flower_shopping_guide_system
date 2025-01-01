import os
from decimal import Decimal
from ssl import Purpose

from django.contrib.auth.decorators import login_required
from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from django.template import loader

from .models import NormalizedProduct, Category, FlowerPurpose
from .services import get_upcoming_holiday_categories

def home_page(request):
        categories = Category.objects.prefetch_related('categories').all()  # 获取所有分类及其下的鲜花
        categories_with_images = []

        for category in categories:
            # 根据类别名称生成背景图路径
            background_image_url = f"/media/category_backgrounds/{category.name.replace(' ', '_').lower()}.jpg"

            # 检查背景图是否存在（可选）
            if not os.path.exists(
                    os.path.join('media', 'category_backgrounds', f'{category.name.replace(" ", "_").lower()}.jpg')):
                background_image_url = "/media/default-background.jpg"  # 默认背景图

            categories_with_images.append({
                'category': category,
                'background_image_url': background_image_url
            })
        return render(request, 'home.html', {'categories_with_images': categories_with_images})

def upcoming_holiday_recommendations(request):
    """显示即将到来的节日及匹配分类"""
    recommendations = get_upcoming_holiday_categories()
    return render(request, 'recommendations.html', {'recommendations': recommendations})

def normalized_products(request):
    products = NormalizedProduct.objects.all()
    return render(request, 'normalized_products.html', {'products': products})

def category_detail(request, category_id):
    category = get_object_or_404(Category, id=category_id)
    products = category.categories.all()  # 获取该分类下的所有鲜花
    return render(request, 'normalized_products.html', {'products': products})

def purpose_list(request):
        purposes = FlowerPurpose.objects.all()  # 获取所有分类及其下的鲜花
        return render(request, 'purpose_list.html', {'purposes': purposes})

def normalized_products_by_purposes(request,purpose_id):
    purpose=get_object_or_404(FlowerPurpose,id=purpose_id)
    products=purpose.purposes.all()
    return render(request, 'normalized_products.html', {'products': products})


def flower_search(request):
    query = request.GET.get('q', '')  # 获取查询关键词
    min_price = request.GET.get('min_price', '')  # 获取最小价格
    max_price = request.GET.get('max_price', '')  # 获取最大价格

    # 初始过滤：先根据名称搜索
    products = NormalizedProduct.objects.all()

    if query:
        products = products.filter(name__icontains=query)

    # 如果有价格区间条件，进一步过滤
    if min_price:
        products = products.filter(price__gte=Decimal(min_price))  # 价格大于或等于最小价格

    if max_price:
        products = products.filter(price__lte=Decimal(max_price))  # 价格小于或等于最大价格

    return render(request, 'normalized_products.html',
                  {'products': products, 'query': query, 'min_price': min_price, 'max_price': max_price})