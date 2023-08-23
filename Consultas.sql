select * from Data_ETL

--Consulta de criptomonedas con cambio positivo en las últimas 24 horas:
SELECT *
FROM Data_ETL
WHERE Cambio_24_h > 0; --269 REGISTROS

--Ordenar criptomonedas por capitalización de mercado de mayor a menor:
SELECT *
FROM Data_ETL
ORDER BY Cap_de_mercado DESC;

--Filtrar criptomonedas con precio mayor a cierto valor:
SELECT *
FROM Data_ETL
WHERE Precio > 100;--47 registros

--Calcular valor total del mercado para cada criptomoneda:
SELECT Moneda, Precio * Cap_de_mercado AS valor_total_mercado
FROM Data_ETL;

--Comparar cambio de precio de dos criptomonedas en un período específico:
SELECT Moneda, Cambio_24_h
FROM Data_ETL
WHERE Moneda IN ('Bitcoin', 'Ethereum')
AND Cambio_24_h >= 0;

--Crear un informe de las 10 criptomonedas con mayor volumen en 24 horas:
SELECT TOP 10 Moneda, Volumen_en_24_horas
FROM Data_ETL
ORDER BY Volumen_en_24_horas DESC;--10 registros




