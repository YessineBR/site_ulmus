from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from django.utils.translation import gettext_lazy as _
from .models import HeroSection, AboutUsSection, AboutUsListItem


@plugin_pool.register_plugin
class HeroSectionPlugin(CMSPluginBase):
    model = HeroSection
    render_template = "base/hero_section.html"
    cache = False
    module = _("Théme Ulmus")
    name = _("Hero Section")
    
@plugin_pool.register_plugin
class AboutUsSectionPlugin(CMSPluginBase):
    model = AboutUsSection
    module = _("Théme Ulmus")
    name = _("About Us Section")
    render_template = "base/about_us_section.html"
    cache = False
    allow_children = True
    child_classes = ['AboutUsListItemPlugin']

    def render(self, context, instance, placeholder):
        context.update({
            'instance': instance,
            'list_items': instance.list_items.all()
        })
        return context
    
@plugin_pool.register_plugin
class AboutUsListItemPlugin(CMSPluginBase):
    model = AboutUsListItem
    module = _("Théme Ulmus")
    name = _("About Us List Item")
    render_template = "base/about_us_list_item.html"
    parent_classes = ['AboutUsSectionPlugin']

    def render(self, context, instance, placeholder):
        context.update({
            'instance': instance,
        })
        return context