from datetime import date

from data_management.models import Holiday
from django.core.management import BaseCommand


class Command(BaseCommand):
    help = "Load predefined holidays into the database"

    def handle(self, *args, **kwargs):
        holidays = [
            {"name": "情人节", "description": "情人节是庆祝爱情和浪漫的节日，情侣们通常会互赠礼物，表达爱意。","date":date(2025, 2, 14)},
            {"name": "母亲节", "description": "母亲节是向母亲表达感恩和爱的节日。","date":date(2025, 5, 10)},
            {"name": "教师节", "description": "教师节是中国专门设立来感恩和尊敬教师的节日。", "date": date(2025, 2, 14)},
            {"name": "妇女节", "description": "国际妇女节旨在庆祝女性在社会、经济、文化和政治等方面的成就。", "date": date(2025, 3, 8)},
        ]
        for holiday in holidays:
            Holiday.objects.get_or_create(name=holiday["name"],date=holiday["date"],description=holiday["description"])
        self.stdout.write(self.style.SUCCESS('Holidays loaded successfully.'))
