# Boa prática
# Cada app se vira com suas rotas

from django.urls import path
from motorartigos.views import index, artigo

urlpatterns = [
    path('',index,name='index'),
    path('artigo/',artigo,name='artigo')
 ]
