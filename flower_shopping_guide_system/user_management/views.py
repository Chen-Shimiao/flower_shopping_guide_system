from django.contrib.auth import login, authenticate, logout
from django.contrib.auth.hashers import check_password, make_password
from django.shortcuts import HttpResponse, redirect, render, HttpResponseRedirect, get_object_or_404

from user_management.models import UserProfile,ContactMessage
from django.contrib import messages

from data_management.views import home_page

from user_management.forms import ContactForm

from user_management.forms import UserForm


def user_login(request):
    if request.method == 'GET':
        return render(request, 'user_login.html')
    if request.method == 'POST':
        username = request.POST["username"]
        password = request.POST["password"]
        user = UserProfile.objects.filter(username=username).first()
        if user and check_password(password, user.password):
            user.password = make_password(password)
            user.save()
            user = authenticate(request, username=username, password=password)
        if user is not None:
            print(user)
            user.backend = 'user_management.backends.CustomAuthBackend'
            login(request, user)
            print(user)
            return redirect(home_page)
        else:
            messages.error(request, "密码错误")
            return redirect(user_login)
    else:
        messages.error(request, "这个用户没有被注册！马上加入我们！")
    return redirect(user_login)





def user_register(request):
    if request.method == 'GET':
        return render(request, 'user_registration.html')
    if request.method == 'POST':
        errors = UserProfile.objects.reg_validator(request.POST)
        if 'user_created' in errors:
            request.session['email'] = errors['user_created'].email
            request.session['name'] = errors['user_created'].username
            request.session['record'] = "registered!"
            return redirect('/user_login')
        else:
            for key, value in errors.items():
                messages.error(request, value)
            return render(request, 'user_registration.html')


def user_logout(request):
    if request.method == 'GET':
        logout(request)
        return redirect('/user_login')


def contact_view(request):
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            # 保存留言到数据库
            ContactMessage.objects.create(
                name=form.cleaned_data['name'],
                email=form.cleaned_data['email'],
                message=form.cleaned_data['message']
            )
            return render(request, 'contact_success.html', {'name': form.cleaned_data['name']})
    else:
        form = ContactForm()
    return render(request, 'contact.html', {'form': form})

def personal_details(request):
    username=request.user.username
    print(username)
    user = get_object_or_404(UserProfile, username=username)
    if request.method == 'POST':
        form = UserForm(request.POST, instance=user)
        if form.is_valid():
            form.save()
            messages.success(request, "User updated successfully.")
    else:
        form = UserForm(instance=user)
    return render(request, 'personal_details.html', {'form': form, 'user': user})


