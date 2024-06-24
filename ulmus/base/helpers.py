from cms.models.pagemodel import Page

def get_page_url_choices():
    pages = Page.objects.all()  # Filter to get only public pages
    url_choices = [(page.get_absolute_url(), page.get_title()) for page in pages]
    return tuple(url_choices)