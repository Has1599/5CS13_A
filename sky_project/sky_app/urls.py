from django.urls import path
from . import views

urlpatterns = [
    path('organisation/', views.network_view, name='organisation_view'),
    path('teams/', views.teams, name='teams'),
    path('profile/', views.profile, name='profile'),
]