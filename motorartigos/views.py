from django.db.models import Q
from django.shortcuts import get_object_or_404, render

from motorartigos.models import Artigo, EixoTecnologia


def index(request):
    busca = request.GET.get("q", "").strip()
    eixo_id = request.GET.get("eixo", "").strip()

    artigos_base = Artigo.objects.select_related(
        "id_fk_autor",
        "id_fk_eixo",
    ).filter(publicada=True)

    artigos_recentes = artigos_base[:4]

    artigos = artigos_base

    if eixo_id:
        artigos = artigos.filter(id_fk_eixo_id=eixo_id)

    if busca:
        artigos = artigos.filter(
            Q(titulo__icontains=busca)
            | Q(texto__icontains=busca)
            | Q(id_fk_autor__nome__icontains=busca)
            | Q(id_fk_eixo__nome__icontains=busca)
        )

    eixos = EixoTecnologia.objects.all()

    contexto = {
        "artigos": artigos,
        "artigos_recentes": artigos_recentes,
        "eixos": eixos,
        "busca": busca,
        "eixo_id": eixo_id,
    }

    return render(request, "motorartigos/index.html", contexto)


def artigo_detalhe(request, artigo_id):
    artigo = get_object_or_404(
        Artigo.objects.select_related("id_fk_autor", "id_fk_eixo"),
        id=artigo_id,
        publicada=True,
    )

    recomendados = Artigo.objects.select_related(
        "id_fk_autor",
        "id_fk_eixo",
    ).filter(
        publicada=True,
        id_fk_eixo=artigo.id_fk_eixo,
    ).exclude(id=artigo.id)[:3]

    contexto = {
        "artigo": artigo,
        "recomendados": recomendados,
    }

    return render(request, "motorartigos/artigo.html", contexto)
