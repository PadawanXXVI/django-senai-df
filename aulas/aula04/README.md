# 🚀 DESENVOLVEDOR WEB COM PYTHON E DJANGO

Serviço Nacional de Aprendizagem Industrial - SENAI DF  
Brasília, 17 de junho de 2026  
Anderson de Matos Guimarães  
Professor: Rômulo César

## Ativar o servidor

```python
python manage.py runserver
```

![servidor](../aula04/Foguete.png)

## Django templates

### Relembrando

- Model (Classes de entidade)
- Templates (Front-end)
- Views (renderiza o front-end: para qual página html enviar e a parir dos models)
  
### Criando as views (Adeus foguetinho!)

Em `motorartigos > views.py`:

```python
rom django.shortcuts import render
from django.http import HttpResponse # incluído para criar a maninupar 'respostas' HTTP

# Create your views here.
# Aqui vou criar minhas rotas
# Minhas regra de negócio

def index(request):
    return HttpResponse("<h1>Oi</h1>") # Cria a 'página' HTML (index)
```

## 🚶‍♀️ Configurando a rota - aqui começa pra valer

1. Em `motorartigos > urls.py` (caso urls.py não existir, criar o arquivo)

```python
from django.urls import path # incluído
from motorartigos.views import index # incluído

urlpatterns = [
    path('', index), # define a rota do próprio app
]
```

2. `Em setup > urls.py` (não é o mesmo que `motorartigos>urls.py`):

```python
from django.contrib import admin
from django.urls import path, include # incluído

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('motorartigos.urls')), # incluir a url do app (chamar a que foi criada acima, no app)
]
```

3. Configurar o diretório `templates`

Em `setup > settings.py`:

- Confirmar que módulo `os` foi importado
- Em `TEMPLATES`, no `DIRS`:

```python
TEMPLATES = [
{
    'BACKEND': 'django.template.backends.django.DjangoTemplates',
    'DIRS': [os.path.join(BASE_DIR,'templates')], # incluído
    'APP_DIRS': True,
    'OPTIONS': {
        'context_processors': [
            'django.template.context_processors.debug',
            'django.template.context_processors.request',
            'django.contrib.auth.context_processors.auth',
            'django.contrib.messages.context_processors.messages',
        ],
    },
},
]
  ```

  DIRS - informa para o DJANGO onde buscar templates adicionais

4. 📃 Criando e renderizando templates 

Na pasta templates (se não existir, deve ser criada dentro da raiz do diretório):

- Criar uma pasta com o mesmo nome do aplicativo (`motorartigos`)
- Dentro da pasta mortorartigos, criar a pasta `index.html`
- Criar a página html em `index.html` com '!':

```html
   !DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Django Artigos</title>
</head>
<body>
    
    <h1>O mehlhor site de Django, IA e Data Science do Brasil</h1>
</body>
</html>
```

- Definir a rota em `motorartigos > views.py`:

```python
def index(request):
    # return HttpResponse("<h1>Oi</h1>") comentado, pois iremos usar index.html
    return render(request, 'templates\motorartigos\index.html') # ativa a página index.html
```

---

## 🕑 Part II - STATIC e DTL (Django Template Language ou 'Template Engine')

1. Na pasta `setup` criar as pastas:
   - static
   - img

2. Baixar logos oficiais sobre IA e tecnologias e salvar em `setup > statcs > img`:
   - logo do python (pyhton.png e salvar logo oficial)
   - logo django
   - logo mysql
   - logo gemini
   - logo chatgpt
   - logo maritaca ai
   - logo mistral ai
   - logo groq ia
   - logo langflow
   - logo Hungging Face

3. Criar o arquivos `styles.css`
   - Criar em `setup > static > css`:

Obs.: apenas exemplo de como usar CSS

```css
/*
    SELETOR ➡ pode ser:
    nome de uma tag
    #
    .

    <p></p> - prágrafo
    p{ - formata o parágrafo todo
        color:red;
    }
    .preto{ - serve para formatações específicas
        cor:black;
    }
*/
```

Obs.: Buscar templates em <https://adminlte-v4.netlify.app/>

4. Configurar a rota do static:

- Em setup > settings.py:
  Dentro de `# Static files (CSS, JavaScript, Images)`

```python
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/4.1/howto/static-files/

STATIC_URL = 'static/'

## Inserido a partir daqui
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'setup/static')
]

STATIC_ROOT = os.path.join(BASE_DIR, 'static')
```

5. Criar a pasta 'static root' que reúne todo static

  - no terminal:
  
```python
python manage.py collectstatic
```

  - Verificar se a pasta `static` foi criada na raiz do diretório.

5. Criar um estilo para verificar se funcionou:

  - Em `setup > static > css > styles.css`:

``css
body{
    background-color: black;
}
h1{
    color: white;
}
```
  - em `templates > motorartigos > index.html` antes do código HTML (na primeira linha):

```html
{% load static%} <!-- carrega a página como estática-->
```

  - em `templates > motorartigos > index.html` no 'head':
  
```html
<link rel="stylesheet" href="{% static '/css/styles.css' %}"> <!--link rel="stylesheet" HTML Normal //  Template Engine-->
```

 - Exemplo completo:

```html
{% load static %} <!-- carrega a página como estática-->

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Django Artigos</title>
    <link rel="stylesheet" href="{% static '/css/styles.css' %}"> <!--link rel="stylesheet" HTML Normal //  Template Engine-->
</head>
<body>
    
    <h1>O melhor site de Django, IA e Data Science do Brasil</h1>
</body>
</html>
```

  - rodar o servidor:

```python
python mamage.py runserver
```

---
