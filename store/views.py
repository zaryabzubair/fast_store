from django.shortcuts import render


def ProductList(request):
    return render(request, 'store/product_list.html')

