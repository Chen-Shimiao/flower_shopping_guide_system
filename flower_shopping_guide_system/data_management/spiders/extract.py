import re

from data_management.models import RawProducts,NormalizedProduct,FlowerLocation,Category,FlowerPurpose,DataSource,Shop


def extract_title(title):
    # 定义正则模式
    patterns = {
        'flowers': r"(玫瑰|百合|康乃馨|郁金香|向日葵|满天星|牡丹|兰花|桔梗|勿忘我|菊花|剑兰|紫罗兰|洋桔梗|芍药花)",  # 提取花材
        'type': r"(同城速递)",       # 提取类型
        'purposes': r"(生日|告白|庆祝|纪念日|求婚|道歉|慰问)",            # 提取用途
        'recipient': r"(女友|朋友|母亲|妻子|领导)",                     # 提取目标人群
        'locations': r"(北京|上海|天津|重庆|广州|深圳|成都|杭州|武汉|南京|西安|苏州|沈阳|青岛|大连|宁波|厦门|济南|郑州|长沙|昆明|合肥|福州|哈尔滨|长春|南昌|贵阳|兰州|南宁|呼和浩特|银川|乌鲁木齐|海口|西宁|拉萨|台北|香港|澳门)",           # 提取配送范围
    }

    # 存储提取结果
    extracted_info = {}

    for key, pattern in patterns.items():
        match = re.findall(pattern, title)
        extracted_info[key] = list(set(match))  # 去重

    return extracted_info

def convert_to_number(text):
    # 处理万单位
    if '万' in text:
        # 使用正则提取数字部分
        match = re.match(r'(\d+)', text)
        if match:
            number = int(match.group(1))  # 提取数字部分
            return f"{number * 10000:.2f}"  # 转换为万的数字并保留两位小数

    # 如果没有“万”，直接提取数字
    match = re.match(r'(\d+)', text)
    if match:
        number = int(match.group(1))  # 提取数字部分
        return f"{number:.2f}"  # 保留两位小数

    return "0.00"  # 默认返回 "0.00" 如果没有找到数字

# 提取信息
def extract_info():
    # info = extract_title(title)
    flowers=RawProducts.objects.all()
    for f in flowers:
        post_free=f.postText=="包邮"
        deal = convert_to_number(f.deal)
        data_source=DataSource.objects.get(name="淘宝")
        shop,created=Shop.objects.update_or_create(name = f.shop ,website_url = f.shop_url,location =f.location )
        flower, created=NormalizedProduct.objects.update_or_create(source=data_source,name=f.title, price=f.price,deal=deal, post_free=post_free,image_url=f.img_url.replace("_.webp", ""),detail_url=f.title_url,shop=shop)
        info=(extract_title(f.title))
        for i in info["flowers"]:
            flower.category.add(Category.objects.get(name=i))
        for i in info["locations"]:
            flower.location.add(FlowerLocation.objects.get(name=i))
        for i in info["purposes"]:
            flower.purpose.add(FlowerPurpose.objects.get(name=i))