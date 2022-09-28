SELECT * FROM data_2017;

-- Find number of columns for each table
SELECT COUNT(*) 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'homeless_db'
AND table_name = 'data_2020';

-- Merge tables with the same columns into one table
(SELECT *  INTO homeless_data_2017_through_2020 FROM data_2017)
UNION
(SELECT * FROM data_2018)
UNION
(SELECT * FROM data_2019)
UNION
(SELECT * FROM data_2020);

