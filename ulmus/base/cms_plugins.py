from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from django.utils.translation import gettext_lazy as _

from .models import HeroSection, AboutUsSection, AboutUsListItem, Service, ServicesSection, ServiceCard, CTASection, ContactSection, CounterSection
from .forms import ContactRequestForm


@plugin_pool.register_plugin
class HeroSectionPlugin(CMSPluginBase):
    model = HeroSection
    render_template = "base/hero_section.html"
    cache = False
    module = _("Théme Ulmus")
    name = _("Section Héro")
    
@plugin_pool.register_plugin
class AboutUsSectionPlugin(CMSPluginBase):
    model = AboutUsSection
    module = _("Théme Ulmus")
    name = _("Section A propos")
    render_template = "base/about_us_section.html"
    cache = False
    allow_children = True
    child_classes = ['AboutUsListItemPlugin']

    def render(self, context, instance, placeholder):
        context = super().render(context, instance, placeholder)
        context.update({
            'instance': instance,
        })
        return context
    
@plugin_pool.register_plugin
class AboutUsListItemPlugin(CMSPluginBase):
    model = AboutUsListItem
    module = _("Théme Ulmus")
    name = _("Element liste A Propos")
    render_template = "base/about_us_list_item.html"
    parent_classes = ['AboutUsSectionPlugin']

    def render(self, context, instance, placeholder):
        context = super().render(context, instance, placeholder)
        context.update({
            'instance': instance,
        })
        return context

@plugin_pool.register_plugin
class ServicesSectionPlugin(CMSPluginBase):
    model = ServicesSection
    module = _("Théme Ulmus")
    name = _("Section Service")
    render_template = "base/services_section.html"
    cache = False
    allow_children = True
    child_classes = ["ServiceCardPlugin"]
    
    def render(self, context, instance, placeholder):
        context = super().render(context, instance, placeholder)
        context.update({
            'instance': instance,
        })
        
        return context

@plugin_pool.register_plugin
class ServiceCardPlugin(CMSPluginBase):
    model = ServiceCard
    module = _("Théme Ulmus")
    name = _("Service Card")
    render_template = "base/service_card.html"
    parent_classes = ["ServicesSectionPlugin"]
    
    def render(self, context, instance, placeholder):
        context = super().render(context, instance, placeholder)
        service = instance.service
        context.update({
            'service': service,
        })
        return context
    
@plugin_pool.register_plugin
class CTASectionPlugin(CMSPluginBase):
    model = CTASection
    module = _("Théme Ulmus")
    name = _("Appel A l'action")
    cache = False
    render_template = "base/CTA_section.html"
    
@plugin_pool.register_plugin
class ContactSectionPlugin(CMSPluginBase):
    model = ContactSection
    module = _("Théme Ulmus")
    name = _("Section Contact")
    cache = False
    render_template = "base/contact_section.html"
    
    def render(self, context, instance, placeholder):
        form = ContactRequestForm()
        context.update({
            'instance': instance,
            'form': form,
        })
        return context
    
@plugin_pool.register_plugin
class CounterSectionPlugin(CMSPluginBase):
    model = CounterSection
    module = _("Théme Ulmus")
    name = _("Section Compteurs")
    cache = False
    render_template = "base/counter_section.html"