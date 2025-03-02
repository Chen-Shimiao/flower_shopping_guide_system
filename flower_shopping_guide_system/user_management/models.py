import email

from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
from django.db import models
import re
import bcrypt


class CustomUserManager(BaseUserManager):
    def reg_validator(self, postData):
        errors = {}
        phone_falg = UserProfile.objects.filter(email=postData['phone'])
        if(phone_falg):
            errors['phone_exist']="The phone that you entered exists before , please try to login with your phone number"
        if postData['password']!=postData['password']:
            errors['psw_not_identical']="Make sure passwords match"
        if len(postData['phone']) != 11:
            errors['mobile_len']="Number Of Valid Mobile Phone Digits Must Be 11"
        if len(postData['password']) < 8 or len(postData['password']) < 8:
            errors['password'] = "Password must be at least 8 characters long"

        if len(errors) == 0:
            hashpw = bcrypt.hashpw(postData['password'].encode(), bcrypt.gensalt()).decode()
            user_created= UserProfile.objects.create(username=postData['username'],password = hashpw,email=postData['email'],phone=postData['phone'])
            user_created.save()
            errors['user_created']= user_created

        return errors
    def create_superuser(self, email, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        return self.create_user(email, password, **extra_fields)

    def create_user(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError('The Email field must be set')
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    # 添加get_by_natural_key方法
    def get_by_natural_key(self, email):
        return self.get(email=email)

class UserProfile(AbstractBaseUser ):
    id = models.BigAutoField(primary_key=True)
    username = models.CharField(max_length=128, unique=True)
    password = models.CharField(max_length=256)
    email = models.EmailField(unique=True)
    phone = models.CharField(max_length=15, unique=True)
    c_time = models.DateTimeField(auto_now_add=True)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField(default=False)

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', 'phone']
    objects = CustomUserManager()

    # 必须定义 has_module_perms 方法
    def has_module_perms(self, app_label):
        return True  # 简单实现，返回True表示用户有该模块的访问权限

    def has_perm(self, perm, obj=None):
        return True  # 简单实现，返回True表示用户有所有权限

class ContactMessage(models.Model):
    name = models.CharField(max_length=100)  # 用户名
    email = models.EmailField()  # 用户邮箱
    message = models.TextField()  # 留言内容
    created_at = models.DateTimeField(auto_now_add=True)  # 提交时间

    def __str__(self):
        return f"{self.name} - {self.email} ({self.created_at})"