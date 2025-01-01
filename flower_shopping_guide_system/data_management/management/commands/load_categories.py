from django.core.management.base import BaseCommand
from data_management.models import Category

class Command(BaseCommand):
    help = "Load predefined categories into the database"

    def handle(self, *args, **kwargs):
        categories = [
            {"name": "玫瑰花", "description": "爱情的象征，适合表白、求婚、纪念日等场合。"},
            {"name": "百合花", "description": "象征纯洁和高雅，常用于祝贺新婚或表达纯真的友情。"},
            {"name": "康乃馨", "description": "爱与感恩的象征，尤其是母爱。"},
            {"name": "郁金香", "description": "高雅的象征，适合用来表达祝福、爱的告白或祝愿成功。"},
            {"name": "向日葵", "description": "象征阳光、热情与希望，是祝福朋友或爱人的理想选择。"},
            {"name": "满天星", "description": "象征纯洁和浪漫，常作为辅助花材搭配其他主花。"},
            {"name": "牡丹花", "description": "中国传统名花，象征富贵与吉祥。"},
            {"name": "兰花", "description": "象征高洁与优雅，适合用来表达敬意。"},
            {"name": "桔梗花", "description": "代表不变的爱与真诚，适合用来表达友情或爱情。"},
            {"name": "勿忘我", "description": "寓意永恒的思念与爱情。"},
            {"name": "菊花", "description": "东方文化中多用作追思，西方文化中象征长寿和希望。"},
            {"name": "剑兰", "description": "象征怀念与祝福，常用于庆贺新生活的开始。"},
            {"name": "紫罗兰", "description": "代表忠诚和美德，适合表达感激之情。"},
            {"name": "洋桔梗", "description": "寓意纯洁的爱、感激和真诚。"},
            {"name": "芍药花", "description": "象征美丽与害羞，常用于爱情的表白。"}
        ]
        for category in categories:
            Category.objects.get_or_create(name=category["name"], defaults={"description": category["description"]})
        self.stdout.write(self.style.SUCCESS('Categories loaded successfully.'))
