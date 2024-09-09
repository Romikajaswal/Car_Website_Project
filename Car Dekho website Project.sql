use cars;
select * from car_dekho;

-- ---Total number of total cars
select count(*) FROM car_dekho;

-- --How many cars will be available in 2023?
select count(*) FROM car_dekho where year = 2023;

-- --Number of cars available in year 2020,2021,2022
select year,count(*) from car_dekho
where year in (2020,2021,2023) group by year;

-- --Which year has the ighest number of cars
select year,count(*) as total_cars from car_dekho group by year order by total_cars desc limit 1;

-- --How many diesel cars were there in 2020?
select year,fuel,count(*) from car_dekho where year =2020 and fuel="Diesel";

-- --How many petrol cars were there in year 2019?
select year,fuel,count(*) from car_dekho where fuel="petrol" and year= 2019; #352

-- --All fuel cars by all years
select year,COUNT(*) from car_dekho where fuel="Petrol"
group by year;
select year,COUNT(*) from car_dekho where fuel="Diesel"
group by year;
select year,COUNT(*) from car_dekho where fuel="CNG"
group by year;

-- --Which year had more than 100 cars?
select * from car_dekho;
select year,count(*) as total_cars from car_dekho group by year having total_cars>100 ;

-- --Details of all cars between the year 2015 and 2023
select * from car_dekho where year between 2015 and 2023;

-- --Total number of cars between year 2018 and 2022
select count(*) from car_dekho where year between 2018 and 2022;

