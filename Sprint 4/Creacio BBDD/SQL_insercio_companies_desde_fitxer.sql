LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\companies.csv'
INTO TABLE companies
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES;

select * from companies;