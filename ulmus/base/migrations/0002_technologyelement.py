# Generated by Django 5.0.6 on 2024-06-27 09:05

import django.db.models.deletion
import filer.fields.image
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('base', '0001_initial'),
        ('cms', '0035_auto_20230822_2208'),
        migrations.swappable_dependency(settings.FILER_IMAGE_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='TechnologyElement',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='%(app_label)s_%(class)s', serialize=False, to='cms.cmsplugin')),
                ('label', models.CharField(max_length=125, verbose_name='Libelle')),
                ('technology_image', filer.fields.image.FilerImageField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='technologies_section_images', to=settings.FILER_IMAGE_MODEL, verbose_name='Image de section technologies')),
            ],
            bases=('cms.cmsplugin',),
        ),
    ]
