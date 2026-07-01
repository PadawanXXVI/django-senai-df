from django.contrib import admin
from .models import Autor,EixoTecnologia
class AutorAdmin(admin.ModelAdmin):
    list_display = ('nome','biografia','email')
    search_fields=('nome',)
    
admin.site.register(Autor, AutorAdmin)
# exercício crie o admin do EixoTecnologico