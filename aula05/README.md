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
