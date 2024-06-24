from django.db import models
from cms.models.pluginmodel import CMSPlugin
from django.utils.translation import gettext_lazy as _

# Create your models here.


class HeroSection(CMSPlugin):
    title = models.CharField(max_length=255, verbose_name=_("Titre"))
    subtitle = models.CharField(max_length=255, verbose_name=_("Sous-titre"))
    created_at = models.DateTimeField(auto_now_add=True, verbose_name=_("Date de création"))
    updated_at = models.DateTimeField(auto_now=True, verbose_name=_("Date de modification"))
    background_image = models.ImageField(upload_to='plugins/hero_section/', null=True, blank=True, verbose_name=_("Image de fond"))
    
    class Meta:
        get_latest_by = 'created_at'
    
    def __str__(self):
        return f"Hero Section"
    
class AboutUsSection(CMSPlugin):
    description_1 = models.TextField(verbose_name=_("Description 1"), null=True, blank=True)
    description_2 = models.TextField(verbose_name=_("Description 2"), null=True, blank=True)
    description_3 = models.TextField(verbose_name=_("Description 3"), null=True, blank=True)

    def __str__(self):
        return f"About Us Section {self.id} : {self.description_1} | {self.description_2} | {self.description_3}"

class AboutUsListItem(CMSPlugin):
    about_us_section = models.ForeignKey(AboutUsSection, related_name='list_items', on_delete=models.CASCADE)
    text = models.CharField(max_length=255, verbose_name=_("List Item"))

    def __str__(self):
        return self.text