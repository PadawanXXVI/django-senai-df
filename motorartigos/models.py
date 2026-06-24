from django.db import models
from tinymce.models import HTMLField

# Create your models here.
# Aqui vou criar minhas classes de entidade

# 1. Primeiro criamos a entidade Autor
class Autor(models.Model):
    # atributo
    # O atributo 'id' é automático (no django).
    # Chave primária: imutável, universal e única
    nome = models.CharField(max_length=100)
    biografia = models.TextField()
    email = models.EmailField()

    def __str__(self):
        return self.nome
    
    class Meta:
        db_table = "autor"

class EixoTecnologia(models.Model):
    nome = models.CharField(max_length=100)

    def __str__(self):
        return self.nome
    
    class Meta:
        db_table = "eixo"
    
class Artigo(models.Model):
    texto = HTMLField()
    data_publicacao = models.DateTimeField(auto_now_add=True)
    id_fk_autor = models.ForeignKey(
    Autor,
    on_delete=models.CASCADE,
    db_column='id_fk_autor',
    verbose_name='Autor'
    )

    id_fk_eixo = models.ForeignKey(
        EixoTecnologia,
        on_delete=models.CASCADE,
        db_column='id_fk_eixo',
        verbose_name='Eixo tecnológico'
    )

    def __str__(self):
        return f"Artigo {self.id} - {self.data_publicacao}"
    
    class Meta:
        db_table = 'artigo'