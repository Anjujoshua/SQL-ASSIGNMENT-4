#data base name is country_people
create database country_people;
use country_people;
-- create a table country

create table country(Id int, Country_name varchar(30) ,Population int not null,
 Area varchar(30)not null);
 
 -- insert  10 rows
 insert into country(Id, country_name,population,Area)
 values( 1, 'china', 1500000, 'shanghai'),
 (2, 'us', 600000, 'phoenix'),
 (3,'uk', 1000000,'king'),
 (4,'india',900000,'gujarat'),
 (5,'null',650000,'tehran'),
 (6,'japan',120000,'hiroshima'),
 (7,'belgium',800000,'charleroi'),
 (8,'chile',700000,'arica'),
 (9,'canada',300000,'toronto'),
 (10,'egypt',500000,'israel');
 
 
-- create a table persons

create table persons( Id int, Fname varchar(15)not null, Lname varchar(15) not null,
 Population int not null, Rating int ,Country_Id int not null, 
 Country_name varchar(15) );
 
 insert into persons (Id, fname,Lname,population,Rating,Country_Id,Country_name)
 values(11,'jo','joseph',1500000,4.3,101,'china'),
 (12,'alan','jeo', 600000, 4.6,102,'us'),
 (13,'joshua','alby',1000000,3.7,103,'uk'),
 (14,'sam','jon',900000,3.9,104,'india'),
 (15,'john','peter',650000,3,105,'null'),
 (16,'lilly','mathew',120000,3.4,106,'japan'),
 (17,'jose', 'jerry',800000,4,107,'belgium'),
 (18,'patty','jim',700000,2.9,108,'chile'),
 (19,'jom','jithi',300000,4.9,109,'canada'),
 (20,'anju','jerome',500000,3.1,110,'egypt');
 
 -- List the distinct country names from the Persons table 
select distinct country_name from persons;

  -- select first names and last names from the Persons table with aliases
 select fname AS First_names, Lname AS Last_names from persons;
 
-- find all persons with a rating greater than 4.0. 
select * from persons where rating > 4.0;

-- find countries with a population greater than 10 lakhs
SELECT * from Country where Population > 1000000;

-- Find persons who are from 'US' or have a rating greater than 4.5
select fname,Lname from persons where country_name= 'us 'and Rating >4.5;

-- Find all persons where the country name is NULL.
select* from persons where country_name=null;

-- Find all persons from the countries 'USA', 'Canada', and 'UK'.
select fname,Lname from persons where country_name in('us','canada','uk');


-- Find all persons not from the countries 'India' and 'Australia'
select fname, Lname from persons where country_name not in('india','australia');


-- Find all countries with a population between 5 lakhs and 20 lakhs
select * from country where population between 500000 and 2000000;

-- Find all countries whose names do not start with 'C'.
 select* from country where country_name like  'c%';

 
 


 
 
 
 
 
 