from django.urls import path
from motorartigos.views import index,artigo

urlpatterns = [
    path('',index),
    path('artigo/',artigo,name='artigo')
]