# Cryptocurrency  Market Data Analytics
*********************************************************************************************************************
# Proyecto Individual N°2
# Javier Melo DATAPT_02
*********************************************************************************************************************
Este proyecto consiste en un proceso de Extracción, Transformación y Carga (ETL) realizado en Python para recopilar datos sobre criptomonedas desde el sitio web Coingecko. El script utiliza las bibliotecas requests, BeautifulSoup y pandas para llevar a cabo el proceso.

### Requisitos
**********************************
Asegúrate de tener las siguientes bibliotecas instaladas en tu entorno de Python:
•	Requests
•	BeautifulSoup
•	Pandas

Puedes instalarlas usando el siguiente comando:
	pip install requests beautifulsoup4 pandas

### Uso
*************************************
Clona este repositorio en tu máquina local o descarga el archivo ZIP.
Abre el archivo EDA_Coins.py en tu editor de código preferido.
Ejecuta el script. Recuerda que puedes modificar el rango de páginas si deseas recolectar más datos o menos datos.
Una vez que el script haya terminado de ejecutarse, los datos procesados se guardarán en el archivo datos_criptomonedas_procesados.csv en la carpeta Data_collector.

### Detalles del Proceso
****************************************
El script realiza las siguientes operaciones:

•	Establece un User-Agent en las cabeceras para simular una solicitud de navegador.
•	Itera a través de las páginas del sitio Coingecko (páginas del 1 al 10 en este caso) y extrae el contenido de la tabla.
•	Utiliza la biblioteca pandas para convertir la tabla HTML en un DataFrame.
•	Procesa el DataFrame eliminando la primera y última columna, y cambia los nombres de algunas columnas.
•	Concatena los DataFrames procesados en uno solo.
•	Guarda el DataFrame resultante en un archivo CSV llamado datos_criptomonedas_procesados.csv.
*********************************************************************************************************************
*********************************************************************************************************************
# Script de ETL para Datos de Criptomonedas
*************************************************
Este script de Python realiza un proceso de Extracción, Transformación y Carga (ETL) en los datos de criptomonedas. Utiliza la biblioteca Pandas para llevar a cabo las transformaciones en los datos y guardarlos en un nuevo archivo CSV. A continuación, se describe el proceso realizado por el script:

### Requisitos
************************************************
Asegúrate de tener las siguientes bibliotecas instaladas en tu entorno de Python:
•	pandas
•	matplotlib
•	missingno
•	numpy
•	seaborn

Puedes instalarlas utilizando el siguiente comando:
	pip install pandas matplotlib missingno numpy seaborn 

### Uso
*************************************************
1.	Clona este repositorio en tu máquina local o descarga el archivo ZIP.
2.	Abre el archivo EDA_Coins.py en tu editor de código preferido.
3.	Ejecuta el script para realizar la limpieza y transformación de los datos.
4.	Una vez que el script haya terminado de ejecutarse, los datos procesados se guardarán en un archivo CSV llamado Data_ETL.csv en la carpeta Data_collector.

### Detalles del Proceso
*************************************************
El script realiza las siguientes operaciones en los datos:
1.	Carga los datos desde el archivo CSV datos_criptomonedas_procesados.csv.
2.	Realiza transformaciones en las columnas, renombrando y organizando las mismas.
3.	Limpia los valores de moneda y convierte las columnas relevantes a tipos numéricos.
4.	Formatea las columnas para mostrar números enteros y decimales con el formato adecuado.
5.	Guarda los datos procesados en un nuevo archivo CSV llamado Data_ETL.csv.

*********************************************************************************************************************

#### Visualizaciones de Datos de Criptomonedas
******************************************************
Este script utiliza la biblioteca Matplotlib para crear visualizaciones interactivas a partir de los datos procesados de criptomonedas. A continuación, se presentan las visualizaciones generadas por el script:

#### Visualización 1: Top 12 Criptomonedas por Precio
****************************************************
En esta visualización, se representan las 12 criptomonedas con los precios más altos en orden descendente. Cada barra representa una criptomoneda y su altura corresponde al precio de la misma. Los valores numéricos se muestran encima de las barras.

#### Visualización 2: Cambio de Precio en 1 hora, 24 horas y 7 días
*******************************************************************
Esta visualización muestra el cambio de precio en porcentaje para las 15 principales criptomonedas en tres intervalos de tiempo: 1 hora, 24 horas y 7 días. Cada criptomoneda está representada por tres barras de diferentes colores: azul para el cambio en 24 horas, naranja para el cambio en 7 días y verde para el cambio en 1 hora.

#### Visualización 3: Relación entre Cambio en 24 horas y Capitalización de Mercado
*************************************************************************************
En esta visualización, se explora la relación entre el cambio de precio en 24 horas y la capitalización de mercado de las 10 principales criptomonedas. Cada criptomoneda se representa como una burbuja en un gráfico de dispersión. El tamaño de las burbujas está determinado por el volumen de negociación en 24 horas.

*********************************************************************************************************************
*********************************************************************************************************************
# EDA
*********************************************************************************************************************
Se realiza un análisis exhaustivo de exploración de datos y clústering  EDA_Botcoins.ipynb. 

## Análisis Exploratorio de Datos y Clústering de Criptomonedas
***************************************************************
Este cuaderno de Jupyter lleva a cabo un análisis exploratorio de datos (EDA) y una técnica de clústering en datos de criptomonedas. Se utilizan diversas bibliotecas de Python, como Pandas, Matplotlib, Seaborn y Scikit-Learn, para explorar los datos, detectar patrones y agrupar las criptomonedas en clústeres. A continuación, se describen las secciones y pasos principales del cuaderno:

Puedes instalarlas usando el siguiente comando:
	pip install pandas matplotlib missingno numpy seaborn scikit-learn 

# Secciones Principales
**********************************************************
#### Carga y Exploración de Datos:
******************************************************
•	Se cargan los datos de criptomonedas procesados desde el archivo CSV.
•	Se realizan varias exploraciones iniciales, como visualización de las primeras y últimas filas, estadísticas descriptivas, valores nulos y duplicados.

#### Visualización y Análisis de Distribuciones:
*******************************************************
•	Se utilizan gráficos de histogramas, distribuciones y diagramas de caja para analizar y visualizar las distribuciones y valores atípicos de las variables numéricas.

#### Matriz de Correlación:
***************************************
•	Se crea una matriz de correlación y se visualiza mediante un mapa de calor para identificar relaciones entre las variables numéricas.

#### Análisis de Componentes Principales (PCA):
************************************************
•	Se estandarizan los datos numéricos y se realiza un análisis de componentes principales (PCA) para reducir la dimensionalidad de los datos.

#### Clústering con K-Means:
******************************
•	Se utiliza el método del "codo" para determinar un número óptimo de clústeres.
•	Se realiza el clústering K-Means con el número óptimo de clústeres y se asignan etiquetas a las criptomonedas.

#### Análisis y Visualización de Clústeres:
**********************************************
•	Se analiza estadísticamente cada clúster en función de las variables numéricas.
•	Se visualizan los clústeres en gráficos de dispersión.

#### Interpretación y Significado de Clústeres:
*************************************************
•	Se interpreta y asigna significado a los clústeres obtenidos a través del clústering.
•	Se etiquetan las criptomonedas con nombres de clústeres significativos.

#### Evaluación del Número Óptimo de Clústeres:
*************************************************
•	Se evalúa el número óptimo de clústeres utilizando el coeficiente de silueta.

#### Guardado de Resultados:
**********************************
•	Se guardan las etiquetas de clústeres asignadas a las criptomonedas en un archivo CSV.

*********************************************************************************************************************
*********************************************************************************************************************
# SQL 
*********************************************************************************************************************
1.	Consulta de datos: Puedes realizar consultas SQL para obtener información específica sobre las criptomonedas, como el precio, el cambio en diferentes intervalos de tiempo y otros valores. Por ejemplo, podrías consultar las criptomonedas que han tenido un cambio positivo en las últimas 24 horas.
2.	Análisis de datos: Puedes realizar análisis para identificar tendencias en los cambios de precio, volúmenes de negociación y capitalización de mercado. 
3.	Ordenamiento y filtrado: Puedes ordenar la información en función de diferentes criterios, como el precio o el cambio en el último día. También puedes filtrar las criptomonedas en función de ciertos valores, como el volumen en 24 horas.
4.	Cálculos personalizados: Puedes realizar cálculos basados en los datos existentes, como calcular el valor total del mercado para cada criptomoneda (precio x capitalización de mercado).
5.	Generación de informes: Puedes crear informes visuales o tabulares que presenten la información de manera fácil de entender. Gráficos de líneas para mostrar las tendencias de precios, gráficos circulares para la distribución de la capitalización de mercado, etc.
6.	Comparaciones: Puedes comparar el rendimiento de diferentes criptomonedas en un período específico y ver cuáles han tenido un mejor desempeño.
7.	Actualización de datos: Si estos datos se actualizan periódicamente, puedes crear un proceso para actualizar automáticamente la base de datos con la información más reciente.

*********************************************************************************************************************
## Se describen las consultas y los resultados obtenidos:
*********************************************************
#### Consulta 1: Criptomonedas con Cambio Positivo en las Últimas 24 Horas
*********************************************************************************
Esta consulta selecciona todas las criptomonedas que han experimentado un cambio positivo en sus precios en las últimas 24 horas. Se recuperaron un total de 269 registros que cumplen con este criterio.

#### Consulta 2: Criptomonedas Ordenadas por Capitalización de Mercado
*************************************************************************
Esta consulta selecciona todas las criptomonedas de la tabla y las ordena en orden descendente según su capitalización de mercado. Proporciona una visión de las criptomonedas más valiosas en términos de capitalización de mercado.

#### Consulta 3: Criptomonedas con Precio Mayor a un Valor Específico
*************************************************************************
En esta consulta, se filtran las criptomonedas con un precio mayor a un valor específico (en este caso, 100). Se obtuvieron 47 registros que cumplen con este criterio.

#### Consulta 4: Valor Total del Mercado para Cada Criptomoneda
*******************************************************************
Esta consulta calcula el valor total del mercado para cada criptomoneda multiplicando el precio por la capitalización de mercado. Proporciona una visión general del valor total de mercado de cada criptomoneda.

#### Consulta 5: Comparación de Cambio de Precio entre Dos Criptomonedas
****************************************************************************
Esta consulta compara el cambio de precio en las últimas 24 horas entre dos criptomonedas específicas: "Bitcoin" y "Ethereum". Solo se seleccionan registros donde ambas criptomonedas tengan un cambio de precio positivo.

#### Consulta 6: Informe de las 10 Criptomonedas con Mayor Volumen en 24 Horas
*************************************************************************************
Esta consulta crea un informe que muestra las 10 criptomonedas con el mayor volumen de negociación en las últimas 24 horas. Los resultados se ordenan en orden descendente según el volumen en 24 horas.

*********************************************************************************************************************
*********************************************************************************************************************
# POWER BI
*********************************************************************************************************************
## Análisis de Criptomonedas en Power BI
****************************************
En este proyecto, utilicé Power BI Desktop para realizar un análisis detallado de los datos de criptomonedas. A continuación, se detallan las visualizaciones y análisis realizados:

#### Transformación de Datos y Cálculos de Promedio
*********************************************************
Utilicé Power BI para cargar los datos de la base de datos "coins_gecko" y realicé transformaciones para limpiar y dar formato a los datos. Calculé los promedios de cambio en 1 hora, 24 horas y 7 días, así como también el promedio del volumen en 24 horas.

#### Segmentación de Datos
********************************
Agregué una segmentación de datos que permite a los usuarios seleccionar una criptomoneda específica y ver su cambio en horas.

#### KPIs (Indicadores Clave de Rendimiento)
*************************************************
Incluí tres KPIs que muestran el cambio mínimo, promedio y máximo para cada moneda en un período de tiempo seleccionado.

#### Tarjetas Guía
********************
Utilicé tarjetas guía para mostrar información clave, como el número total de monedas en el conjunto de datos, el promedio de cambio en 1 hora y el volumen promedio en 24 horas.

#### Matrices de Datos
*************************
Creé dos matrices que muestran la moneda junto con la cantidad FDV y su porcentaje. También, realicé lo mismo con el volumen en 24 horas y su porcentaje.

#### Gráfico de Barras
*************************
Generé un gráfico de barras que muestra el promedio de cambio para cada moneda. Esto permite una fácil comparación de las monedas en función de su cambio promedio.

#### Mapa de Dispersión
***************************
Diseñé un mapa de dispersión que representa la relación entre la capitalización de mercado y el volumen en 24 horas para cada moneda. Esto ayuda a visualizar cualquier patrón o correlación entre estas dos métricas.

#### Líneas de Precio y Capitalización
****************************************
Realicé un gráfico de líneas que muestra la evolución del precio y la capitalización de mercado para cada moneda a lo largo del tiempo.

#### Gráficos de Barras Agrupadas
***********************************
Creé tres gráficos de barras agrupadas que presentan la moneda junto con el volumen promedio, la cantidad de capital de mercado y la suma de precios. Estos gráficos ayudan a comparar las monedas en términos de volumen, capitalización de mercado y precio.

#### Gráfico Circular
******************************
Diseñé un gráfico circular que muestra la distribución de las monedas en función de su valor. Al pasar el cursor sobre las porciones del gráfico, se muestra información detallada de cada moneda.

******************************************************************************************************************************************************************************************************************************************