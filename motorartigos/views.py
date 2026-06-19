from django.shortcuts import render
from django.http import HttpResponse # incluído para criar a maninupar 'respostas' HTTP

# Create your views here.
# Aqui vou criar minhas rotas
# Minhas regra de negócio

def index(request):
    # return HttpResponse("<h1>Oi</h1>")
    autores = {
        1: {"nome": "André Roglem",
            "biografia": "estudante do SENAI de DB",
            "email": "roglem@nasa.gov.br"
            },
        2: {"nome": "Luiz Fernando",
            "biografia": "Desenvolvedor Django",
            "email": "fernando@gmail.com"
            },
        3: {"nome": "Victor John",
            "biografia":"Desenvolvedor SQL",
            "email":"victor@gmail.com"
        }
    }
    return render(request, 'motorartigos/index.html', {"autores":autores}) # "autores" é o apelido; já autores, sem as aspas, é a origem dos dados
def artigo(request):
    return render(request, 'motorartigos/artigo.html')
