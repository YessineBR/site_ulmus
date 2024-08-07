from django.db import models
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
from filer.fields.image import FilerImageField
from .helpers import *

# Create your models here.


class HeroSection(CMSPlugin):
    title = models.CharField(max_length=255, verbose_name=_("Titre"))
    subtitle = models.CharField(max_length=255, verbose_name=_("Sous-titre"))
    created_at = models.DateTimeField(auto_now_add=True, verbose_name=_("Date de création"))
    updated_at = models.DateTimeField(auto_now=True, verbose_name=_("Date de modification"))
    background_image = FilerImageField(related_name="hero_section_images", on_delete=models.SET_NULL, null=True, blank=True, verbose_name=_("Image de fond"))
        
    class Meta:
        get_latest_by = 'created_at'
    
    def __str__(self):
        return f"Section Héro"
    
class AboutUsSection(CMSPlugin):
    description_1 = models.TextField(verbose_name=_("Description 1"), null=True, blank=True)
    description_2 = models.TextField(verbose_name=_("Description 2"), null=True, blank=True)
    description_3 = models.TextField(verbose_name=_("Description 3"), null=True, blank=True)

    def __str__(self):
        return f"Section A Propos"

class AboutUsListItem(CMSPlugin):
    text = models.CharField(max_length=255, verbose_name=_("List Item"))

    def __str__(self):
        return self.text

class Service(models.Model):
    title = models.CharField(max_length=256, verbose_name=_("Titre"))
    description = models.TextField(verbose_name=_("Description"))
    icon_class = models.CharField(max_length=50, verbose_name=_("Icon CSS Class"), help_text="Enter a CSS class for the icon (e.g., 'bi bi-heart')")
    date_created = models.DateTimeField(auto_now_add=True, verbose_name=_("Date de création"))

    class Meta:
        verbose_name = _("Service")
        verbose_name_plural = _("Services")
        ordering = ['-date_created']

    def __str__(self):
        return self.title

    def icon_preview(self):
        return f'<i class="{self.icon_class}"></i>'

    icon_preview.allow_tags = True
    icon_preview.short_description = 'Icon Preview'

class ServicesSection(CMSPlugin):
    description = models.TextField(verbose_name=_("Description"))
    
    def __str__(self):
        return f"Section Services"

class ServiceCard(CMSPlugin):
    service = models.ForeignKey(Service, related_name="service", on_delete=models.CASCADE)
    
    def __str__(self):
        return self.service.title

class CTASection(CMSPlugin):
    header = models.CharField(max_length=125, verbose_name=_("Titre"))
    text = models.TextField(verbose_name=_("Description"))
    button_text = models.CharField(max_length=125, verbose_name=_("Texte Bouton"))
    button_link = models.CharField(max_length=256, choices=get_page_url_choices, blank=True, verbose_name=_("Lien Bouton"))
    background_image = FilerImageField(related_name="cta_section_images", on_delete=models.SET_NULL, null=True, blank=True, verbose_name=_("Image de fond"))
    
    def __str__(self):
        return f"Section CTA : {self.header}"
    
class ContactSection(CMSPlugin):
    description = models.TextField(verbose_name=_("Description"))
    company_address = models.CharField(max_length=256, verbose_name=_("Addresse de la société"))
    company_email = models.EmailField(verbose_name=_("E-mail de la société"))
    company_phone_number = models.CharField(max_length=32, verbose_name=_("Numéro téléphone de la société"))
    
    def __str__(self):
        return f"Section contact"
    
class ContactRequest(models.Model):
    name = models.CharField(max_length=125, verbose_name=_("Nom"))
    email = models.EmailField(verbose_name=_("E-mail"))
    subject = models.CharField(max_length=256, verbose_name=_("Sujet"))
    message = models.TextField(verbose_name=_("Message"))
    
    class Meta:
        verbose_name = _("Contact Request")
        verbose_name_plural = _("Contact Requests")
    
    def __str__(self):
        return f"Demande N°{self.id}: {self.name}"

class CounterSection(CMSPlugin):
    title = models.CharField(max_length=125, verbose_name=_("Titre"))
    description = models.CharField(max_length=256, verbose_name=_("Description"))
    clients_max_counter = models.IntegerField(verbose_name=_("Compteur clients"))
    projects_max_counter = models.IntegerField(verbose_name=_("Compteur projets"))
    workers_max_counter = models.IntegerField(verbose_name=_("Compteur employés"))
    background_image = FilerImageField(related_name="counter_section_images", on_delete=models.SET_NULL, null=True, blank=True, verbose_name=_("Image de fond"))
    
    def __str__(self):
        return f"Section Compteur"

class FeaturesSection(CMSPlugin):
    features_image = FilerImageField(related_name="features_section_images", on_delete=models.SET_NULL, null=True, blank=True, verbose_name=_("Image de section caractéristiques"))
    
    def __str__(self):
        return f"Section Caractéristiques"

class FeatureElement(CMSPlugin):
    icon_class = models.CharField(max_length=50, verbose_name=_("Icon CSS Class"), help_text="Enter a CSS class for the icon (e.g., 'bi bi-heart')")
    title = models.CharField(max_length=255, verbose_name=_("Titre"))
    description = models.CharField(max_length=256, verbose_name=_("Description"))
    
    def __str__(self):
        return self.title

class TechnologyElement(CMSPlugin):
    label = models.CharField(max_length=125, verbose_name=_("Libelle"))
    technology_image = FilerImageField(related_name="technologies_section_images", on_delete=models.SET_NULL, null=True, blank=True, verbose_name=_("Image de section technologies"))
    
    def __str__(self):
        return self.label