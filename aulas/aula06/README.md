# 🚀 DESENVOLVEDOR WEB COM PYTHON E DJANGO

Serviço Nacional de Aprendizagem Industrial - SENAI DF  
Brasília, 19 de junho de 2026  
Anderson de Matos Guimarães  
Professor: Rômulo César

## Agenda

- Lidando com dados

## Lidando com Dados

- Preparar o ambiente
- Nomes dinâmmicos
- Banco de Dados

## Tipos de estrutura de dados em Python

### Exemplos

```python
lista = [1, 2, 3, 4, 5] # mutável
tupla = (1, 2, 3, 4, 5) # imutável
autores = { 
        1: {"nome": "André Roglem",
            "biografia": "estudante do SENAI de DB",
            "email": "roglem@nasa.gov.br"},
        2: {"nome": "Luiz Fernando",
            "biografia": "Desenvolvedor Django",
            "email": "fernando@gmail.com",
            },
        3: {"nome": "Victor John",
            "bopgrafia":"Desenvolvedor SQL",
            "email":"victor@gmail.com"
        }
    }
```

Em `motorartigos/views.py`:

```python
# Vamos usar o dicionário como base de dados:
autores = { 
        1: {"nome": "André Roglem",
            "biografia": "estudante do SENAI de DB",
            "email": "roglem@nasa.gov.br"},
        2: {"nome": "Luiz Fernando",
            "biografia": "Desenvolvedor Django",
            "email": "fernando@gmail.com",
            },
        3: {"nome": "Victor John",
            "bopgrafia":"Desenvolvedor SQL",
            "email":"victor@gmail.com"
        }
    }

return render(request, 'motorartigos/index.html', {"autores":autores}) # "autores" é o apelido; já autores, sem as aspas, é a origem dos dados
```

Esse último trecho inserido (`{"autores":autores}`) é para conectar o front-end com o back-end.

Criamos um dicionário, para ter uma base de dados

Como conectar?

Em `templates/mortorartigos/index.html`, na últina linha vazia, antes do fim do bloco:

```html
<h1>Autores Cadastrados</h1>
    
    <ul>
        {% for chave, autor in autores.items %}
        <li>
            <strong>ID do Autor:</strong> {{ chave }} <br>
            <strong>Nome:</strong> {{ autor.nome }} <br>
            <strong>Biografia:</strong> {{ autor.bografia }} <br>
            <strong>E-mail:</strong> {{ autor.email }}
        </li>
        <hr>
    </ul>
```

## Importando direto do banco de dados

Em `motorartigos/views`:

```python
def index(request):
    # return HttpResponse("<h1>Oi</h1>")
    # Mock objects = dados falsos
    """ 
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
"""  
    autores = Autor.objects.all() # busca todos os autores na Classe Autor - ou seja, conecta direto com o banco de dados, em vez de usar mock objects
    return render(request, 'motorartigos/index.html', {"autores":autores}) # "autores" é o apelido; já autores, sem as aspas, é a origem dos dados
```

Em `templates/mortorartigos/index.html`, o `for` fica:

```html
<ul>
        {% for autor in autores %}
            <li>
                <strong>ID do Autor:</strong> {{ chave }} <br>
                <strong>Nome:</strong> {{ autor.nome }} <br>
                <strong>Biografia:</strong> {{ autor.biografia }} <br>
                <strong>E-mail:</strong> {{ autor.email }}
            </li>
            <hr>
        {% empty %}
            <p>Nenhum autor encontrado.</p>
        {% endfor %}
    </ul>
```

Fazer migrations:

```bash
python manage.py makemigrations motorartigos
python manage.py migrate motorartigos
```

Rodar o servidor

```bash
python manage.py runserver
```

Entrar em Admin:

```bash
http://127.0.0.1:8000/admin
```

Cadastrar autores.
