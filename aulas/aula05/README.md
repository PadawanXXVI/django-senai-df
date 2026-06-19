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

### DRY (Don't Repeat Yourself)

Não seja repetitivo!

Com a crição das páginas `index.html` e `artigo.html` podemos concluir que houve repetição de código `HTML`.

Para evitar repetição, usamos a técnica DRY.

#### Criação base.html

##### Criamos um novo arquivo chamado base.html em `templates/motorartigos`

```html
{% load static %}

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Django DF</title>
    <link rel="stylesheet" href="{% static '/css/styles.css' %}"> <!-- Puxa o css-->
</head>
<body>
    <!-- Cria um menu-->
    <ul>
        <li>fundamentos python</li>
        <li>fundamentos redes</li>
        <li>fundamentos nuvem</li>
        <li>fundamentos IA</li>
        <li>fundamentos Data Science</li>
        <li>fundamentos Django</li>
    </ul>
    <!-- Cria títulos-->
    <h1> Django DF</h1>
    <h6> Comunidade Django do Distrito Federal</h6>

    <!-- Local que irá herdar o conteúdo das outras páginas-->
    {% block content %}
    
    {% endblock%}

</body>
</html>
```

##### Substitimos todo o conteúdo de index.html por

```html
{% extends 'motorartigos/base.html' %} <!-- herda todo o HTML de base.html, inclusive todas as tags-->  
{% load static %} 

<!-- Coloca todo o conteúdo da página no bloco de conteúdo-->

{% block content %}
    <h1>O melhor site de Django, IA e Data Science do Brasil</h1>

    <a href="{% url 'artigo'%}"> <!-- cria m href para usar o url name-->
        <img src="{% static 'img/logo-chatgpt.png' %}" alt=" logo do chatgpt dourado"> <!-- transfere o link da imagem para dentro do href-->
    </a>
    
    <img src="{% static 'img/logo-claude.png' %}" alt="logo claude laranja com nome em preto">
    <img src="{% static 'img/logo-maritaca.png' %}" alt=" logo maritaca em verde representado por um papagaio">
    
{% endblock%}
```

##### Em seguida, substituímos todo o conteúdo de artigo.html por

```html
{% extends 'motorartigos/base.html' %}
{% load static %}

{% block content %}

    <h1>Cheguei aqui</h1>

{% endblock%}
```

Em `templates/mortorartigos`:

Criar a pasta `partials` para colocar "pedaços" do site.

Dentro de `partials`, criar o arquivo `_footer.html`:

```html
{% load static %}

<footer class="rodape">

DJANGODF &copy; 2026

</footer>
```

Depois, incluir no base.html para receber o rodapé

```html
<body>
    <!-- Cria um menu-->
    <ul>
        <li>fundamentos python</li>
        <li>fundamentos redes</li>
        <li>fundamentos nuvem</li>
        <li>fundamentos IA</li>
        <li>fundamentos Data Science</li>
        <li>fundamentos Django</li>
    </ul>
    <!-- Cria títulos-->
    <h1> Django DF</h1>
    <h6> Comunidade Django do Distrito Federal</h6>

    <!-- Local que irá herdar o conteúdo das outras páginas-->
    {% block content %}
    
    {% endblock%}

    <!-- Inserir o rodapé-->
    {% include 'motorartigos/partials/_footer.html' %} <!-- Inserido para buscar o footer-->

</body>
```

Depois, criar uma classe em css:

```css
.rodape{
    border: 2px solid #9c7c7c;
    width: 100%;
    height: 50px;
    color: azure;
}
```
