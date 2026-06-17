# Boa prática
# Cada app se vira com suas rotas

from django.urls import path # incluído
from motorartigos.views import index # incluído

urlpatterns = [
    path('', index), # define a rota do próprio app
]