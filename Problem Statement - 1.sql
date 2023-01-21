CREATE TABLE IF NOT EXISTS countries ( 
COUNTRY_ID varchar(2),
COUNTRY_NAME varchar(40)
CHECK(COUNTRY_NAME IN('Italy','India','China')) ,
REGION_ID decimal(10,0)
);
SHOW COLUMNS FROM countries;
insert into countries(country_id,country_name,region_id) values ('a','AMERICA',10);
insert into countries(country_id,country_name,region_id) values ('a','India',10);


