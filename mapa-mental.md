# MAPA MENTAL DA AULA DE DJANGO

## Aula 01: configuração de ambiente e primeiro projeto

### 1. Instalação do VS Code (<https://code.visualstudio.com/thank-you?dv=win64user>)

---

### 2. Configurações do VS Code

- Instalar extensão `portuguese`: atualiza o VS Code para o português brasileiro. Caso deseje, pode manter em inglês.
- Abrir o repositório (pasta principal):
  - `Arquivo > abrir pasta > escolher o local` (área de trabalho, C: etc.) e:
    - Caso não tenha criado a pasta, clicar em `Nova pasta`
    - Caso já tenha a pasta criada, apenas selecionar a pasta criada.
- Instalar a extensão Python (da Microsoft)

---

### 3. Instalação do Python

- Instalar a versão 3.10.0 do Python (<https://www.python.org/downloads/release/python-3100/>)

Obs.: não esquecer de marcar a opção: `Add to path`

---

### 4. Instalar o ambiente virtual no VS Code

#### Com as teclas `CTRL + SHIFT + P`
  
- Digitar: python criar ambiente
- Escolher venv
- Selecionar a versão Python 3.10.0 (aparecem as versões do Python que estão instaladas no PC)

#### No terminal (você pode ativar o terminal com `CTRL + '` ou pelo menu `Terminal` do VS Code)

##### Verificar quais versões do python estão instaladas

```bash
py --version
```

##### Criar o ambiente virtual

```bash
python3.10 -m venv meu_ambiente
```

Obs.: meu_ambiente é nome que escolhemos para o ambiente virtual, mas o comum é usar .venv `python3.10 -m venv .venv`.

---

## 5. Ativar o ambiente virtual

  Após a criação do ambiente virtual, seja via teclas de atalho ou seja via terminal, precisamos ativá-lo por meio do terminal com o comando:

```cmd
.venv/Scripts/activate
```

❗ Importante:

- Estamos usando o terminal `CMD`, que poderá ser configurado como terminal padrão do VS Code por meio das configurações do VS Code (`CTRL + SHIFT + P`). Após:
  - Digitar: `terminal escolher padrão`.
  - Selecionar a opção `Command Prompt` (terminal padrão do Windows, antes do PowerShell). Assim, toda vez que abrir um terminal novo, será aberto o teminal `CMD`.
- Pode ser udado outro termnial, como o Ubuntu (caso tenha instalado o WSL, ou até mesmo o terminl Git Bash, muito útil para projetos Git).
- Caso você esteja usando um terminal WSL ou Git Bash, para ativar o ambiente virtual, o comando no terminal é: `source .venv/Scripts/activate`.
- A maior vantagem de usar um ambiente virtual no Python dentro do VS Code é simples: controle total sobre as dependências do seu projeto, evitando conflitos e garantindo que cada projeto funcione exatamente com as versões de bibliotecas que ele precisa.

---

### 6. Instalação do Django

Por estarmos usando a versão Python 3.10.0, é necessário que se instale uma versão do Django compatível com essa versão do Python; por isso, foi escolhido a versão Django 4.1.

Para instalá-la, no terminal:

```bash
pip install django==4.1
```

📝 Tome nota:

- O `pip` é o gerenciador de pacotes oficiais do Python.
- Às vezes, ao tentarmos instalar uma biliboteca com o pip, o sistema informa que o pip está desatualizado, para atualizá-lo, no terminal:

```bash
python -m pip install --upgrade pip
```

---

### 7. Criar o projeto Django

Agora, com o VS Code instaldo e configurado, bem como o Python, o ambiente virtual e o Django, podemos iniciar o projeto Django. Para isso, no terminal:

- criar o projeto:

```bash
django-admin startproject setup . (até o . "ponto")
```

- rodar o projeto:

```bash
python manage.py runserver
```

Após o comando, será possível confirmar se o projeto Django está ou não funcionando, para isso, basta abrir o navegador e acessar a página:

<http://127.0.0.1:8000/>

#### 👀 Fique de olho

No próprio terminal no VS Code, aparecerá que o servidor Django foi iniciado e aparecerá o caminho acima. Para acessar diretamente, basta clicar no enderço com a tecla `CTRL` pressionada que o servidor será aberto na página do navegador padrão.

---

### 8. Criar módulos: aplicativos e funcionalidades

No terminal:

- adicionando Módulos de Missão (Apps):
  
```bash
python manage.py startapp motorartigos # adiciona o módulo ou app "motorartigos" 
```

---

## Aula 02: configurações + banco de dados + models

### 1. Configurações regionais

Como nosso app web é um app brasileiro, iremos configurar o idioma para pt-BR e o fuso horário do Brasil, para isso:

- Acessar o arquivo `settings.py` que está dentro da pasta `setup` (/setup/settings.py)
- Dentro do arquivo `settings.py`, ajustar as configurações regionais em:

```python
# Internationalization
# https://docs.djangoproject.com/en/4.1/topics/i18n/

LANGUAGE_CODE = 'pt-BR' # valor já alterado

TIME_ZONE = 'America/Sao_Paulo'# valor já alterado

USE_I18N = True
USE_TZ = True
```

---

### 2. Conexão com MySQL

Precisamos criar um banco de dados no MySQL, nesse caso, precisamos:

- Iniciar o servidor MySQL no XAMPP (se estiver em sua casa, não há necessidade de utilizar o XAMPP).
- Abrir o MySQL Workbench (é uma inteface gráfica para trabalhar com o MySQL).
- Criar uma nova conexão ou uitilizar uma conexão já existente.

🎲 MySQL

- Caso você não tenha instalado o MySQL Workbench na sua máquina, basta acessar: <https://dev.mysql.com/downloads/installer/>.
- Escolha o Sistema Operacional (no caso Windows).
- Escolher o instalador (esolhar a versão maior, porque o menor, é apenas um 'pré-instalador').
- Na nova página, não precisa nem fazer Login nem Sign Up, basta ler mais embaixo `No thanks, just start mydownload` e executar o instaldor.

---

### 3. Criação do bano de dados

Após a conexão do MySQL ativa, abrirá uma página para digitarmos comando MySQL, a `Query 1`. Nela iremos digitar os comandos MySQL para c riar e usar o banco de dados, além de outras queries (uma query é uma consulta em SQL/MySQL), como mostrar tabelas, descrever as colunas de uma tabela etc.

O comando que iremos digitar para criar o banco de dados é:

```mysql
CREATE DATABASE IF NOT EXISTS djangoartigo; 
```

O que o comando fez foi criar um banco de dados chamado `djangoartigos`. Porém, para que o comando tenha efeito, é necessário executá-lo. A maneira mais fácil é posicionar o curso na linha do comando* e usar as teclas: `CTRL + ENTER`

*Na linha de comando (ou no bloco de comando, lembrando que um comando ou bloco de comando no MySQL é sempre finalizado com `;` (ponto-e-vírgula) e caso o comando ocupe mais de uma linha, será um bloco de comando, e podemos posicionar o cursor em qualquer linha do bloco do comando para executá-lo com `CTRL + ENTER`).

Além de criamos o banco de dados, é necessário fazer com que o MySQL saiba que ele está sendo utilizado, para isso, o comando correspondente é:

```mysql
USE djangoartigos;
```

---

### 4. Conectar o Django com o banco de dados

Por padrão o Django traz a configuração para uso de banco de dados SQLite, contudo, como estamos usando um banco de dados MySQL, precisamos ajustar a conexão com banco de dados (DATABASE) dentro do arquivo `settings.py`:

Em `setup > settings.py`, em DATABASES:

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

🥳 Nem precisa apagar a conexão do Django com o SQLite, basta deixar todo o código que vem comentado, para isso basta colocar aspas triplas (`'''`) antes de depois do código que existe, e depois colar o código acima, embaixo do que jpa existe em `settings.py`.

⚠️ Importante:

É necessário que o Python se conecte com o MySQL, para isso, precisamos baixcar a biblioteca que será responsável por essa conexão. Para isso, no terminal, digite:

```bash
pip install mysqlclient
```

Com tudo configurado e instalado, basta rodarmos novamente o servidor Django e observar se o 'foguetinho' decola.

```bash
python manage.py runserver
```

Caso, em algum momento, você precise parar o servidor Django, basta usarmos a tecla `CTRL + C` no terminal que o servirdor Django será finalizado.

---

### 5. Modelar entidades

Dentro do arquivo `models.py` (`/motorartigos/models.py`):

- Criar a entidade 'Autor':
  
```python
class Autor(models.Model):
    # atributo
    # O atributo 'id' é automático (no django).
    # Chave primária: imutável, universal e única
    nome = models.CharField(max_length=100)
    biografia = models.TextField()
    email = models.EmailField()

    def __str__(self):
        return self.nome
```

- Inserir o app na lista de apps, dentro de `/setup/settings.py` em INSTALLED_APPS:

```python
INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'motorartigos', # inserido para poder criar o app
]
```

---

### 6. Criar o 'migration'

#### Para preparar o 'migration'

```python
python manage.py makemigrations motorartigos
```

#### Rodar 'migration'

```python
python manage.py migrate motorartigos
```

---
