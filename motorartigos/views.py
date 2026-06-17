from django.shortcuts import render
from django.http import HttpResponse # incluído para criar a maninupar 'respostas' HTTP

# Create your views here.
# Aqui vou criar minhas rotas
# Minhas regra de negócio

def index(request):
    # return HttpResponse("<h1>Oi</h1>")
    return render(request, 'motorartigos/index.html') # ativa a página index.html
