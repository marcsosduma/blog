from site_setup import models

def context_processor_example(request):
    return {
        'example': 'Veio do context processor (Example)'
    }

def site_setup(request):
    setup = models.SiteSetup.objects.order_by('-id').first()
    return {
        'site_setup': setup,
    }