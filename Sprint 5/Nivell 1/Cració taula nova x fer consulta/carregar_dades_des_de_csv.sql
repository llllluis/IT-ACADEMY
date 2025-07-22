LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\theaters.csv'
INTO TABLE theatersnew
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
IGNORE 1 LINES;

select * from theatersnew;