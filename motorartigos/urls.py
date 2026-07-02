from django.urls import path

from motorartigos import views


urlpatterns = [
    path("", views.index, name="index"),
    path("artigos/<int:artigo_id>/", views.artigo_detalhe, name="artigo_detalhe"),
]
