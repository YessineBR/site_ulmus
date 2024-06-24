from django.contrib import admin
from .models import HeroSection, AboutUsSection, AboutUsListItem, Service, ServicesSection

# admin.site.register(HeroSection)
# class AboutUsListItemInline(admin.TabularInline):
#     model = AboutUsListItem
#     extra = 1
#     fk_name = 'about_us_section'
    
# @admin.register(AboutUsSection)
# class AboutUsSectionAdmin(admin.ModelAdmin):
#     inlines = [AboutUsListItemInline]

# admin.site.register(ServicesSection)
    
@admin.register(Service)
class ServiceAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'icon_preview', 'date_created')
    search_fields = ('title', 'description')
    list_filter = ('date_created',)
    readonly_fields = ('icon_preview',)  # Ensure icon preview is read-only

    fieldsets = (
        (None, {
            'fields': ('title', 'description', 'icon_class')
        }),
    )