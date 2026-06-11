Serviço Nacional de Apredizagem Industrial - SENAI DF  
Brasília, 11 de junho de 2026  
Anderson de Matos Guimarães  
Professor: Rômulo

# 🚀 DESENVOLVEDOR WEB COM PYTHON E JANGO

## 1 Configurações regionais

- Ativar o servidor: python manage.py runserver
- Alterar configurações
    - Dentro da pasta setup > settings.py, em:
    ```
    # Internationalization
    # https://docs.djangoproject.com/en/4.1/topics/i18n/

    LANGUAGE_CODE = 'pt-BR'

    TIME_ZONE = 'America/Sao_Paulo'

    USE_I18N = True

    USE_TZ = True
    ```

## 2 Modelagem e Conexão com o Banco de dados

### 2.1 Conexão com o MySQL

- Startar o MySQL por meio do Xampp
- Abrir o MySQL Workbench
- Criar uma mova conexão (se necessário)
- Acessar a conexão (existente ou a que foi criada)

### 2.2 Criar o Banco de Dados

- Criar o banco de dados no MySQL:

```sql
CREATE DATABASE djangoartigos;
```

### 2.3 Conectar o Django ao banco de dados do MySQL

- Em setup/settings.py, usar a configuação de banco de dados:

```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'djangoartigos', # O nome do banco de dados MySQL que você criou
        'USER': 'root',    # Seu usuário MySQL
        'PASSWORD': '',  # Sua senha MySQL
        'HOST': 'localhost',        # Ou o IP/nome do host onde o MySQL está rodando
        'PORT': '3306',             # A porta do MySQL (3306 é a padrão)
        # Outras opções podem ser adicionadas em 'OPTIONS' se necessário
        # ... outras configurações ...
        'OPTIONS': {
            'init_command': "SET sql_mode='STRICT_TRANS_TABLES'",
        }
    }
}
```

Obs.: Pode deixar a conexão do sqlite comentada  com `aspas triplas (``` texto ```)`

Via terminal:

- Informar que iremos Usar o MySQL:
```python
pip install mysqlclient
```
- Rodar o servidor:
```python
python manage.py runserver
```

Obs: Se antes de instalar o conector MySQL (`pip install mysqlclient`) o seridor estiver ativo, precisará desativá-lo antes (CTRL + C) e depois reativar (`python manage.py runserver`).

### 2.4 Modelagem das entidades

Em models (`\motorartigos\models.py`):

1. Criar a entidade 'Autor'

```python
class Autor(models.Model):
    nome = models.CharField(max_length=100)
    biografia = models.TextField()
    email = models.EmailField()

    def __str__(self):
        return self.name
```

Após o módulo (entidade) Autor criado:

2. Criar 'migrations'

> Obs.: parar o servidor (`CTRL + C`)

Se necessário, instalar o app:

Em \setup\settings.py,
em ``
```python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'mortorartigos', # inserido para criar o app
]
```

No terminal:

Preparar o migration:

```python
python manage.py makemigrations motorartigos
```

Depois, para aplicar o migration:

```python
python manage.py migrate motorartigos
```

