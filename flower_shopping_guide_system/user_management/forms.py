from django import forms
from .models import UserProfile

class UserForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        fields = ['username', 'password', 'email', 'phone','is_active','is_staff']

class ContactForm(forms.Form):
    name = forms.CharField(label="姓名", max_length=100, widget=forms.TextInput(attrs={'class': 'form-control'}))
    email = forms.EmailField(label="邮箱", widget=forms.EmailInput(attrs={'class': 'form-control'}))
    message = forms.CharField(label="留言", widget=forms.Textarea(attrs={'class': 'form-control', 'rows': 5}))

