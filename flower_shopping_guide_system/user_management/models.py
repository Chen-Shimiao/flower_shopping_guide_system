import email

from django.contrib.auth.base_user import AbstractBaseUser
from django.db import models
import re
import bcrypt


class CustomUserManager(models.Manager):
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

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = ['email', 'phone']
    objects = CustomUserManager()

class ContactMessage(models.Model):
    name = models.CharField(max_length=100)  # 用户名
    email = models.EmailField()  # 用户邮箱
    message = models.TextField()  # 留言内容
    created_at = models.DateTimeField(auto_now_add=True)  # 提交时间

    def __str__(self):
        return f"{self.name} - {self.email} ({self.created_at})"