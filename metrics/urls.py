
from django.urls import path, include
from .views import metrics_data
from utilities.urls import get_model_urls

app_name = 'metrics'  

urlpatterns = [
            path('metrics/data/', metrics_data, name='metrics-data'),  
                path('', include(get_model_urls('metrics', 'metric'))),  
] 

