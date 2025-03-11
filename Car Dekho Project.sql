create database cars;
use cars;
-- READ DATA--
select*from car_dekho;
-- Total cars: get a count of total records--
select count(*) from car_dekho;  #7927
-- manager ask the employee how many cars will be availabl in 2023?--
select count(*) from car_dekho where year = 2023; #6
-- cars available 2020,2021,2022--
select count(*) from car_dekho where year = 2020;  #74
select count(*) from car_dekho where year = 2021;   #7
select count(*) from car_dekho where year = 2022;   #7
-- group by to get order format--
select count(*) from car_dekho where year in (2020,2021,2023) group by year;
-- print the total of all cars by year. I dont see all the details--
select year, count(*) from car_dekho group by year; 
-- how many deesel cars will there be in 2020?--
select count(*) from car_dekho where year =2020 and fuel = "Diesel";
-- how many petrol cars in 2020?--
select count(*) from car_dekho where year =2020 and fuel = "Petrol";
-- print al the fuel cars (petrol, disel, and CBG) come by all year--
select year, count(*) from car_dekho where fuel = "Petrol" group by year;
select year, count(*) from car_dekho where fuel = "Diesel" group by year;
select year, count(*) from car_dekho where fuel = "CNG" group by year;

-- morer than 100 cars in a given year, which yaer had more than 100 cars?--
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<100;

-- all cars ciybt details between 2015 and 2023; we need a complete list,--
select count(*) from car_dekho where year between 2015 and 2023;

-- cars details between 2015 to 2023 we need complete list--
select*from car_dekho where year  between 2015 and  2023;