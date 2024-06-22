from django.db import models
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import gettext_lazy as _

# Create your models here.


class HeroSection(CMSPlugin):
    title = models.CharField(max_length=255, verbose_name=_("Titre"))
    subtitle = models.CharField(max_length=255, verbose_name=_("Sous-titre"))
    created_at = models.DateTimeField(auto_now_add=True, verbose_name=_("Date de création"))
    updated_at = models.DateTimeField(auto_now=True, verbose_name=_("Date de modification"))
    
    class Meta:
        get_latest_by = 'created_at'
    
    def __str__(self):
        return f"Hero Section"