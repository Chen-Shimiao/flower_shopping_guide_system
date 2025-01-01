from datetime import date

from data_management.models import FlowerPurpose
from django.core.management import BaseCommand


class Command(BaseCommand):
    help = "Load predefined purposes into the database"

    def handle(self, *args, **kwargs):
        purposes = [
            {"name": "生日"},
            {"name": "告白"},
            {"name": "庆祝"},
            {"name": "纪念日"},
            {"name": "求婚"},
            {"name": "道歉"},
            {"name": "慰问"},
        ]
        for purpose in purposes:
            FlowerPurpose.objects.get_or_create(name=purpose["name"])
        self.stdout.write(self.style.SUCCESS('Purposes loaded successfully.'))
