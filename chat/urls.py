from django.urls import path, include
from .views import index, chatPage

app_name = 'chat'

urlpatterns = [
    path('', index, name='home'),
    path('<str:username>/', chatPage, name='chat_room'),
]