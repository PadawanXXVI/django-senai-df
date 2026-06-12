from django.contrib import admin
from .models import Autor, EixoTecnologia # Importar as Entidades criadas

# Register your models here.

class AutorAdmin(admin.ModelAdmin):
    list_display = ('nome', 'biografia', 'email',)
    search_fields = ('nome', )

admin.site.register(Autor, AutorAdmin)

class EixoTecnologiaAdmin(admin.ModelAdmin):
    list_display = ('nome',)
    search_fields = ('nome',)

admin.site.register(EixoTecnologia, EixoTecnologiaAdmin)
