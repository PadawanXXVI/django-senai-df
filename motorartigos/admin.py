from django.contrib import admin
from tinymce.widgets import TinyMCE
from django.db import models as db_models
from .models import Autor, EixoTecnologia, Artigo
from html.parser import HTMLParser
from bs4 import BeautifulSoup

@admin.register(Autor)
class AutorAdmin(admin.ModelAdmin):
    list_display = ('id', 'nome', 'email')
    search_fields = ('nome', 'email')

@admin.register(EixoTecnologia)
class EixoTecnologiaAdmin(admin.ModelAdmin):
    list_display = ('id', 'nome')
    search_fields = ('nome',)

@admin.display(description='Prévia do texto')
def resumo_texto(self, obj):
    texto_limpo = BeautifulSoup(obj.texto, 'html.parser').get_text()
    texto_limpo = texto_limpo.strip()
    return texto_limpo[:80] + '...' if len(texto_limpo) > 80 else texto_limpo

@admin.register(Artigo)
class ArtigoAdmin(admin.ModelAdmin):
    list_display = ('id', 'titulo', 'id_fk_autor', 'id_fk_eixo', 'nivel', 'resumo_texto', 'data_publicacao')
    search_fields = ('titulo', 'id_fk_autor__nome', 'texto')
    list_filter = ('id_fk_eixo', 'nivel', 'data_publicacao')
    list_display_links = ('id', 'titulo')   # 👈 tanto id quanto título viram link de edição
    formfield_overrides = {
        db_models.TextField: {'widget': TinyMCE()},
    }
    @admin.display(description='Prévia do texto')
    def resumo_texto(self, obj):
        texto_limpo = BeautifulSoup(obj.texto, 'html.parser').get_text()
        texto_limpo = texto_limpo.strip()
        return texto_limpo[:80] + '...' if len(texto_limpo) > 80 else texto_limpo
    