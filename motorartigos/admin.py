from django.contrib import admin
from .models import Autor, EixoTecnologia, Artigo # Importar as Entidades criadas

# Register your models here.

class AutorAdmin(admin.ModelAdmin):
    list_display = ('nome', 'biografia', 'email',)
    search_fields = ('nome', )

admin.site.register(Autor, AutorAdmin)

class EixoTecnologiaAdmin(admin.ModelAdmin):
    list_display = ('nome',)
    search_fields = ('nome',)

admin.site.register(EixoTecnologia, EixoTecnologiaAdmin)

class ArtigoAdmin(admin.ModelAdmin):
    list_display = ('id', 'data_publicacao', 'id_fk_autor', 'id_fk_eixo')
    search_fields = ('titulo', 'autor__nome',)

admin.site.register(Artigo, ArtigoAdmin)
