from django.urls import path
from .views import contact_request_view

urlpatterns = [
    path('contact-request', contact_request_view, name='contact_request'),
]