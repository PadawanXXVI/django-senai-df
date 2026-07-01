from django.shortcuts import render
#from django.http import HttpResponse
from motorartigos.models import Autor
def index(request):
    #return HttpResponse('<h1>Oi</h1>')
    # estrutura de dados em Python
    #lista = [1,2,3,4,5,6]  #Mutável
    #tupla = (1,2,3,4,5,6)  #Imutável
    #combo_mac = ('big mac','coca cola','batatinha')
    PI_MAT = 3.14
    # chave e valor DICIONÁRIO
    # MOCK OBJECTS
    """
       autores = {
        1:{"nome":"André Roglem",
           "biografia":"estudante do SENAI de BD",
           "email":"roglem@nasa.gov.br"           
          },
        2:{"nome":"Luiz Fernando",
           "biografia":"Desenvolvedor Django ",
           "email":"fernando@gmail.com"},
        3:{"nome":"Victor Jonh",
           "biografia":"Desenvolvedor SQL ",
           "email":"victor@gmail.com"}
    }
    
    """
    autores = Autor.objects.all()
   
    return render(request,'motorartigos/index.html',{"autores":autores})

def artigo(request):
    return render(request,'motorartigos/artigo.html')