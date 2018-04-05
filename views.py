from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm
from django.shortcuts import render, redirect

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            name = form.cleaned_data.get('name')
            email = form.cleaned_data.get('email')
            password = form.cleaned_data.get('password')
	    user = authenticate(name=name, email=email, password=password)
            if login(request, user)
            return redirect('home')
    else:
            error = " Sorry! Email and Password didn't match, Please try again ! "
            return render(request, 'login/notesapp.html',{'error':error})
    else:
        return render(request, 'login/notesapp.html')
        