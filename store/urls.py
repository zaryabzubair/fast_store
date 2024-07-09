from django.urls import path
from .views import ProductList


urlpatterns = [
    path('products/', ProductList, name='product_list'),
]