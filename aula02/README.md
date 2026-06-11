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

## 2 Modelagem do Banco de dados

- Acessar pasta do projeto ('motorartigos') e o arquivo models.py
- Startar o MySQL por meio do Xampp
- Abrir o MySQL Workbench
- Criar uma mova conexão (se necessário)
- Criar o banco de dados:

```sql
CREATE DATABASE djangoartigos;
```

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

- Informar que iremos Usar o MySQL:
```python
pip install mysqlclient
```
- Rodar o servidor:
```python
python manage.py runserver
```

Obs: Se antes de instalar o conector MySQL (`pip install mysqlclient`) o seridor estiver ativo, precisará desativá-lo antes e depois reativar (`python manage.py runserver`).