from django.shortcuts import render
#from django.http import HttpResponse
from motorartigos.models import Autor, Artigo
def index(request):
    # Buscando todos os artigos publicados, ordenados pela data (conforme definido no Meta do seu model)
    artigos = Artigo.objects.filter(publicada=True)
    
    return render(request, 'motorartigos/index.html', {'artigos': artigos})

def artigo(request):
    return render(request,'motorartigos/artigo.html')
