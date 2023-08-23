select * from Data_ETL

--ALTER TABLE Data_ETL
--DROP COLUMN Column_1;

select * from Data_ETL

UPDATE Data_ETL
SET 
    Precio = ROUND(Precio, 2),
	Cambio_1_h = ROUND(Cambio_1_h, 2),
	Cambio_24_h = ROUND(Cambio_24_h, 2),
	Cambio_7_d = ROUND(Cambio_7_d, 2)
	
select * from Data_ETL