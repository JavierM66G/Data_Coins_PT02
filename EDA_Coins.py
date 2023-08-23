import requests
from bs4 import BeautifulSoup
import pandas as pd

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'}

base_url = "https://www.coingecko.com/es"
data_frames = []  # Almacena los datos capturados como DataFrames

for i in range(1, 11):
    params = {'page': i}
    response = requests.get(base_url, headers=headers, params=params)
    soup = BeautifulSoup(response.content, 'html.parser')
    table = pd.read_html(str(soup))[0]
    data_frames.append(table)

master_table = pd.concat(data_frames)
# Selecciona todas las columnas excepto la primera y la última
master_table = master_table.iloc[:, 1:-1]
# Cambia los nombres de las columnas 4 y 7
master_table.columns.values[3] = '1 h'
master_table.columns.values[6] = 'Volumen en 24 h'
# Guarda la tabla procesada en un archivo CSV
master_table.to_csv('Data_collector/datos_criptomonedas_procesados.csv', index=False)

print("datos procesados en la carpeta.")


