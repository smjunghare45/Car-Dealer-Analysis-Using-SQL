--Second Hand Car Dealer's Analysis Using SQL--

CREATE TABLE CarDekho (
 car_name varchar(80),
	car_year int,
	selling_price int,
	km_driven int,
	fuel varchar(10),
	seller_type varchar(20),
	transmission varchar(20),
	car_owner varchar(20),
	mileage varchar(20),
	engine varchar(20),
	max_power varchar(20),
	torque varchar(50),
	seats int
);

SELECT * FROM CarDekho

COPY CarDekho 
FROM 'C:\CarDekho.csv' 
DELIMITER ',' 
CSV HEADER;


--QUERIES__

--READ DATA--
SELECT * FROM CarDekho

--To get the total number of cars i.e total count--
SELECT COUNT(*) FROM CarDekho;

--How Many Cars will be available from year 2023?--
SELECT COUNT(*) FROM CarDekho WHERE car_year = 2023; 

--How many cars are available from year 2020, 20221, 2022?--
SELECT COUNT(*) FROM CarDekho WHERE car_year IN (2020,2021,2022) GROUP BY car_year;

--To print total count of cars in different years without any other details--
SELECT car_year, COUNT(*) FROM CarDekho GROUP BY car_year;

--To print the number of Diesel cars from 2020--
SELECT COUNT(*) FROM CarDekho WHERE car_year = 2020 AND fuel = 'Diesel';

--To print the number of Petrol cars from 2020--
SELECT COUNT(*) FROM CarDekho WHERE car_year = 2020 AND fuel = 'Petrol';

--To print the total number of fuel(Petrol, Diesel, CNG) cars from all the years--
SELECT car_year, COUNT(*) FROM CarDekho WHERE fuel = 'Petrol' GROUP BY car_year;
SELECT car_year, COUNT(*) FROM CarDekho WHERE fuel = 'Diesel' GROUP BY car_year;
SELECT car_year, COUNT(*) FROM CarDekho WHERE fuel = 'CNG' GROUP BY car_year;

--To print the years which has more than 100 cars--
SELECT car_year, COUNT(*) FROM CarDekho GROUP BY car_year HAVING COUNT(*) > 100;

--To print the years which has less than 50 cars--
SELECT car_year, COUNT(*) FROM CarDekho GROUP BY car_year HAVING COUNT(*) < 50;

--To print the count of all car from year between 2015 and 2023--
SELECT COUNT(*) FROM CarDekho WHERE car_year BETWEEN 2015 AND 2023; 

--To print the details of all car from year between 2015 and 2023--
SELECT * FROM CarDekho WHERE car_year BETWEEN 2015 AND 2023;