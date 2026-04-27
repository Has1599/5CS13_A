from django.urls import path
from . import views

urlpatterns = [
    path('organisation/', views.network_view, name='organisation_view'),
]