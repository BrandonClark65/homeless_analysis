SELECT * FROM data_2021;

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

SELECT * FROM homeless_data_2017_through_2020;

SELECT "Year", "State", "Overall Homeless", "Unsheltered Homeless",
"Overall Homeless Individuals", "Unsheltered Homeless Individuals", "Overall Homeless People in Families", "Sheltered Total Homeless People in Families",
"Unsheltered Homeless People in Families", "Sheltered Total Chronically Homeless Individuals",
"Unsheltered Chronically Homeless Individuals", "Overall Chronically Homeless People in Families", "Sheltered Total Chronically Homeless People in Families", 
"Unsheltered Chronically Homeless People in Families", "Overall Homeless Veterans", "Sheltered Total Homeless Veterans", "Unsheltered Homeless Veterans", "Overall Homeless Unaccompanied Youth (Under 25)",
"Sheltered Total Homeless Unaccompanied Youth (Under 25)", "Unsheltered Homeless Unaccompanied Youth (Under 25)"
INTO homeless_data_2017_through_2020_summary
FROM homeless_data_2017_through_2020;






