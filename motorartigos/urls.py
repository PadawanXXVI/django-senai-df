# Boa prática
# Cada app se vira com suas rotas

from django.urls import path 
from motorartigos.views import index, artigo # acresentado 'artigo'

urlpatterns = [
    path('', index),
    path('artigo/', artigo, name='artigo') # nova rota acrescentada
]