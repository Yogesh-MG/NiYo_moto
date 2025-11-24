from rest_framework import generics
from rest_framework.permissions import AllowAny
from .models import CustomerModel
from .serializers import CustomerSerializer


class CustomerViewset(generics.ListCreateAPIView):
    queryset = CustomerModel.objects.all()
    permission_classes = [AllowAny]
    serializer_class = CustomerSerializer