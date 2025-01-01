from datetime import date, timedelta
from .models import Holiday, CategoryHoliday


def get_upcoming_holiday_categories(days_ahead=60):
    """获取即将到来的节日及其匹配的分类"""
    today = date.today()
    upcoming_holidays = Holiday.objects.prefetch_related('categories').filter(
        is_active=True,
        date__gte=today,
        date__lte=today + timedelta(days=days_ahead)
    )

    recommendations = []
    categories=[]
    for holiday in upcoming_holidays:
        # 获取关联的分类，按优先级排序

        related_categories=holiday.categories.all()
        for c in (related_categories):
            categories.append(c.category)
        recommendations.append({
            "holiday": holiday,
            "categories": categories
        })
    return recommendations
