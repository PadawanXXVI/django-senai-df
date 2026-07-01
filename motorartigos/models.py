from django.db import models
class Autor(models.Model):
      nome = models.CharField(max_length=100)
      biografia = models.TextField()
      email = models.EmailField()
      def __str__(self):
            return self.nome
      class Meta:
            db_table = 'autor'

class EixoTecnologia(models.Model):
      nome = models.CharField(max_length=60)
      def __str__(self):
            return self.nome
      class Meta:
            db_table = 'eixo'
