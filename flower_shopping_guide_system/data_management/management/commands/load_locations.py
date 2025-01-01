from datetime import date

from data_management.models import FlowerLocation
from django.core.management import BaseCommand


class Command(BaseCommand):
    help = "Load predefined locations into the database"

    def handle(self, *args, **kwargs):
        locations = [
            {"name": "北京"},
            {"name": "上海"},
            {"name": "天津"},
            {"name": "重庆"},
            {"name": "广州"},
            {"name": "深圳"},
            {"name": "成都"},
            {"name": "杭州"},
            {"name": "武汉"},
            {"name": "南京"},
            {"name": "西安"},
            {"name": "苏州"},
            {"name": "沈阳"},
            {"name": "青岛"},
            {"name": "大连"},
            {"name": "宁波"},
            {"name": "厦门"},
            {"name": "济南"},
            {"name": "郑州"},
            {"name": "长沙"},
            {"name": "昆明"},
            {"name": "合肥"},
            {"name": "福州"},
            {"name": "哈尔滨"},
            {"name": "长春"},
            {"name": "南昌"},
            {"name": "贵阳"},
            {"name": "兰州"},
            {"name": "南宁"},
            {"name": "呼和浩特"},
            {"name": "银川"},
            {"name": "乌鲁木齐"},
            {"name": "海口"},
            {"name": "西宁"},
            {"name": "拉萨"},
            {"name": "台北"},
            {"name": "香港"},
            {"name": "澳门"}
        ]
        for location in locations:
            FlowerLocation.objects.get_or_create(name=location["name"])
        self.stdout.write(self.style.SUCCESS('Locations loaded successfully.'))
