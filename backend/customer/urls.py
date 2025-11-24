from django.urls import path
from .views import CustomerViewset


urlpatterns = [
    path('customer/', CustomerViewset.as_view(), name="customer")
]
