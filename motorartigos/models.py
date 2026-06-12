from django.db import models

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