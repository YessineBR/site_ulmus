from django.contrib import admin
from .models import AboutUsSection, AboutUsListItem

class AboutUsListItemInline(admin.TabularInline):
    model = AboutUsListItem
    extra = 1
    fk_name = 'about_us_section'
@admin.register(AboutUsSection)
class AboutUsSectionAdmin(admin.ModelAdmin):
    inlines = [AboutUsListItemInline]