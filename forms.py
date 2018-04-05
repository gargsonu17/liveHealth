from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User


class SignUpForm(UserCreationForm):
    name = forms.CharField(max_length=50, required=False, help_text='Required.')
    email = forms.EmailField(max_length=50, required=False, help_text='Required. Inform a valid email address.')
    password = forms.CharField(max_length=50, help_text='Required.')

    class Meta:
        model = User
        fields = ('name', 'email', 'password')