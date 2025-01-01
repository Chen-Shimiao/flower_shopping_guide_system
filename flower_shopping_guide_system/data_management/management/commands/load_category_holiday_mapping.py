from data_management.models import CategoryHoliday,Category,Holiday
from django.core.management import BaseCommand


class Command(BaseCommand):
    def handle(self, *args, **kwargs):
        valentine=Holiday.objects.get(name="情人节")
        mothers_day=Holiday.objects.get(name="母亲节")
        teachers_day=Holiday.objects.get(name="教师节")
        women_day=Holiday.objects.get(name="妇女节")
        rose = Category.objects.get(name="玫瑰花")
        carnation = Category.objects.get(name="康乃馨")

        # 创建关系
        CategoryHoliday.objects.create(category=rose, holiday=valentine, priority=1)
        CategoryHoliday.objects.create(category=carnation, holiday=mothers_day, priority=2)
        CategoryHoliday.objects.create(category=carnation, holiday=teachers_day, priority=3)
        CategoryHoliday.objects.create(category=carnation, holiday=women_day, priority=4)