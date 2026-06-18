# 🚀 DESENVOLVEDOR WEB COM PYTHON E DJANGO

Serviço Nacional de Apredizagem Industrial - SENAI DF  
Brasília, 18 de junho de 2026  
Anderson de Matos Guimarães  
Professor: Moisés César

## Static - URLS - Dry - Imagens

### Ambientação da aula 05

1. Iniciar o Xampp.
2. Ativar a venv no terminal do VS code: `.venv\Scripts\activate`.
3. Rodar o projeto de ontem:  `python manage.py runserver`.
4. Imagens estáticas.
5. Rodar o projeto de hoje.

### Trabalhando com imagens estáticas

#### Exemplo 01

Em `index.html` (`templates/motorartigos/index.html`):

Inserir a tag `img` dentro de body

```html
<body>
    
    <h1>O melhor site de Django, IA e Data Science do Brasil</h1>
    <img src="{% static 'img/logo-chagtp.png' %}" alt=" logo do chatgpt verde com branco">
</body>
```

Para melhorar a visualização da imagem inserida, no css:

```css
body{
    background-color: #9c7c7c /* mudança da cor de fundo */
}
h1{
    color: white;
}
img{
    width: 10%; /* ajuste do tamanho da imagem */
}
```

### Abrir nova página a partir de outra

#### Em templates, criar uma nova página chamada `artigo.html`

```html
{% load static %}

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artigo</title>
</head>
<body>
    
    <h1>Cheguei aqui!!!!</h1>
    
</body>
</html>
```

#### Criar uma nova rota

Criar uma nova view em `mortorartigos/views.py`

```python
def artigo(request):
    return render(request, 'motorartigos/artigo.html')
```

Em motorartigos/urls.py

```python
from django.urls import path 
from motorartigos.views import index, artigo # acresentado 'artigo'

urlpatterns = [
    path('', index),
    path('artigo/', artigo, name='artigo') # nova rota acrescentada 'name' se refere ao 'url name' que simplifica a navegação a partir do nome
]
```

Em index.html, link a nova página com a imagem do chatgpt

```html
<body>
    
    <h1>O melhor site de Django, IA e Data Science do Brasil</h1>

    <!--Alterações incluídas-->
    <a href="{% url 'artigo'%}"> <!-- cria uma a href para usar o url name-->
        <img src="{% static 'img/logo-chatgpt.png' %}" alt=" logo do chatgpt dourado"> <!-- transfere o link da imagem para dentro do a href-->
    </a>
       
    <img src="{% static 'img/logo-claude.png' %}" alt="logo claude laranja com nome em preto">
    <img src="{% static 'img/logo-maritaca.png' %}" alt=" logo maritaca em verde representado por um papagaio">
</body>
```
