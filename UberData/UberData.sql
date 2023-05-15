
-- This code creates a table called "uberdemographics" with five columns: EmployeeID, FirstName, LastName, Age, and Gender.

CREATE TABLE uberdemographics (
  EmployeeID INTEGER,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Age INTEGER,
  Gender VARCHAR(10)
);

-- This code inserts data into the "uberdemographics" table. Each row represents a different employee's data, including their EmployeeID, first name, last name, age, and gender.


INSERT INTO uberdemographics (EmployeeID, FirstName, LastName, Age, Gender)
VALUES 
(1001, 'Aaliyah', 'Johnson', 24, 'Female'),
(1002, 'Jamal', 'Williams', 18, 'Male'),
(1003, 'Jasmine', 'Brown', 18, 'Female'),
(1004, 'Matthew', 'Parker', 53, 'Male'),
(1005, 'Sophia', 'Smith', 30, 'Female'),
(1006, 'Lisa', 'Johnson', 51, 'Female'),
(1007, 'Kendrick', 'Jones', 26, 'Male'),
(1008, 'Maurice', 'King', 22, 'Male'),
(1009, 'Ebony', 'Turner', 20, 'Female'),
(1010, 'Darnell', 'Taylor', 28, 'Male'),
(1011, 'Rashad', 'Davis', 45, 'Male'),
(1012, 'Ruth', 'Wilson', 73, 'Female'),
(1013, 'Nia', 'Parker', 30, 'Female'),
(1014, 'Isabella', 'Martinez', 41, 'Female'),
(1015, 'Jada', 'Allen', 38, 'Female'),
(1016, 'Tia', 'Anderson', 37, 'Female'),
(1017, 'Mary', 'Johnson', 71, 'Female'),
(1018, 'Deja', 'Thompson', 17, 'Female'),
(1019, 'Ebony', 'Davis', 18, 'Female'),
(1020,	'John', 'Thompson', 44,	'Male')

-- This code retrieves all data from the "UberSalary" table.

SELECT * FROM UberSalary

-- This code creates a table called "UberSalary" with three columns: EmployeeId, JobTitle, and Salary.


CREATE TABLE UberSalary 
(EmployeeId int,
 JobTitle varchar (50),
 Salary int
 );

 
 -- This code inserts data into the "UberSalary" table. Each row represents a different employee's data, including their EmployeeID, JobTitle  and Salary.

INSERT INTO UberSalary (EmployeeID, JobTitle, Salary)
VALUES
(1001, 'Pharmacy Tech', 40000),
(1002, 'Student', 0),
(1003, 'Student', 0),
(1004, 'CEO Tech', 349973),
(1005, 'Safety Officer', 105031),
(1006, 'Interior Designer', 128409),
(1007, 'Line Cook', 35855),
(1008, 'Package Handler', 37440),
(1009, 'Cashier', 12480),
(1010, 'Nurse', 75000),
(1011, 'Assembly Worker', 43910),
(1012, 'Retired', 0),
(1013, 'HR', 75537),
(1014, 'House Cleaner', 34665),
(1015, 'Assistant Manager', 44436),
(1016, 'Nurse', 62532),
(1017, 'Retired', 0),
(1018, 'Cashier Fast Food', 23000),
(1019, 'Student', 0),
(1020, 'Meat Cutter', 40189)

SELECT * FROM uberdemographics

SELECT * FROM UberSalary


-- Used left Join to combine 3 columns from UberDemographics and two columns from UberSalary

-- Used a to specify table A and b to specify table b

SELECT a.EmployeeID, a.FirstName, a.LastName, a.gender, b.JobTitle, b.Salary
FROM uberdemographics a
LEFT JOIN UberSalary b
ON a.EmployeeID = b.EmployeeID
AS Combinedtable;


CREATE TABLE CombinedData AS
SELECT a.EmployeeID, a.FirstName, a.LastName, a.gender, b.JobTitle, b.Salary
FROM uberdemographics AS a
LEFT JOIN UberSalary AS b
ON a.EmployeeID = b.EmployeeID;


SELECT * FROM CombinedData


CREATE TABLE Data AS
SELECT * from Combinedata
join
(
	SELECT a.EmployeeID, a.FirstName, a.LastName, a.gender, b.JobTitle, b.Salary
FROM uberdemographics AS a
LEFT JOIN UberSalary AS b
ON a.EmployeeID = b.EmployeeID;
	
SELECT * 
INTO DATA
FROM CombinedData
	
	
SELECT * FROM DATA
	
SELECT * EmployeeID, FirstName, LastName, gender, JobTitle, Salary FROM DATA

SELECT FirstName, LastName, MAX(Salary) AS HighestSalary
	FROM DATA
	GROUP BY FirstName, LastName
	order by MAX(Salary) DESC
	LIMIT 1

	
	SELECT FirstName, LastName, MAX(Salary) AS HighestSalary
	FROM DATA
	WHERE 

-- The code provided appears to be creating a table called "Uber_Min_Zip" with columns for "UberId", "Pickupzip", "DropoffZip", "Trip_Time", and "Rating". It then inserts 20 rows of data into the table using the "INSERT INTO" statement.


	
CREATE TABLE Uber_Min_Zip
(UberId int,
Pickupzip int,
DropoffZip int,
Trip_Time int,
Rating int)
	
	 -- This code inserts data into the "UberSalary" table. Each row represents a different employee's data, including their EmployeeID, JobTitle  and Salary.


INSERT INTO Uber_Min_Zip (UberId, Pickupzip, DropoffZip, Trip_Time, Rating)
VALUES

(1001, 28227, 28270, 27, '5'),
(1002, 28227, 28227, 15, '5'),
(1003, 28227, 28227, 9, '5'),
(1004, 28205, 28215, 22, '5'),
(1005, 28206, 28205, 11, '5'),
(1006, 28207, 28206, 18, '5'),
(1007, 28215, 28207, 19, '5'),
(1008, 28205, 28215, 13, '5'),
(1009, 29730, 28204, 30, '5'),
(1010, 29732, 29730, 35, '5'),
(1011, 29732, 29730, 15, '5'),
(1012, 28203, 28273, 8, '5'),
(1013, 28208, 28208, 12, '5'),
(1014, 28214, 28208, 8, '5'),
(1015, 28208, 28203, 7, '5'),
(1016, 28208, 28208, 10, '5'),
(1017, 28107, 28208, 40, '5'),
(1018, 28079, 28079, 11, '5'),
(1019, 28212, 28105, 12, '5'),
(1020, 28212, 28270, 14, '5')

CREATE TABLE RawDataSet AS	
Select a.employeeID, a.FirstName, a.LastName, a.Gender, a.Jobtitle, a.Salary, b.Pickupzip, b.DropoffZip, b.Trip_Time, b.Rating
FROM DATA AS a
LEFT JOIN Uber_Min_Zip AS b
ON a.EmployeeID = b.UberID

	
	SELECT * FROM RawDataSet


	
ALTER TABLE RawDataSet ADD race varchar(50);
	
UPDATE RawDataSet SET race = 'black' WHERE id = 1;
UPDATE RawDataSet SET race = 'black' WHERE id = 2;
UPDATE RawDataSet SET race = 'black' WHERE id = 3;
UPDATE RawDataSet SET race = 'white' WHERE id = 4;
UPDATE RawDataSet SET race = 'white' WHERE id = 5;
UPDATE RawDataSet SET race = 'white' WHERE id = 6;
UPDATE RawDataSet SET race = 'black' WHERE id = 7;
UPDATE RawDataSet SET race = 'black' WHERE id = 8;
UPDATE RawDataSet SET race = 'black' WHERE id = 9;
UPDATE RawDataSet SET race = 'black' WHERE id = 10;
UPDATE RawDataSet SET race = 'black' WHERE id = 11;
UPDATE RawDataSet SET race = 'white' WHERE id = 12;
UPDATE RawDataSet SET race = 'black' WHERE id = 13;
UPDATE RawDataSet SET race = 'hispanic' WHERE id = 14;
UPDATE RawDataSet SET race = 'black' WHERE id = 15;
UPDATE RawDataSet SET race = 'black' WHERE id = 16;
UPDATE RawDataSet SET race = 'white' WHERE id = 17;
UPDATE RawDataSet SET race = 'black' WHERE id = 18;
UPDATE RawDataSet SET race = 'black' WHERE id = 19;
UPDATE RawDataSet SET race = 'white' WHERE id = 20;
	
1.What is the Average income of all uber riders?
	
Select ROUND(AVG(Salary), -2) FROM RawDataSet
	55400
	
2.-- Obtain first and last name of each passenger above the average salary amount.
	
SELECT * FROM DATA
WHERE Salary BETWEEN 55422 AND 350000
	
1004	"Matthew"	"Parker"	"Male"		"CEO Tech"			349973
1005	"Sophia"	"Smith"		"Female"	"Safety Officer"	105031
1006	"Lisa"	"Johnson"		"Female"	"Interior Designer"	128409
1010	"Darnell"	"Taylor"	"Male"		"Nurse"				75000
1013	"Nia"	"Parker"		"Female"	"HR"				75537
1016	"Tia"	"Anderson"		"Female"	"Nurse"				62532

SELECT Gender, trip_time FROM RawDataSet
GROUP BY gender
	
3.-- What are the jobtitle's utilzied by uber riders?
	

	SELECT jobtitle, COUNT(*)
	FROM RawDataSet
	GROUP BY jobtitle
	ORDER BY Count DESC
	Limit 3
	
-- 	"Student"	3
-- "Retired"	2
-- "Nurse"	2

	

	
4.Is there a correlation between pickup zip code and drop off zip code?
	SELECT CORR(Pickupzip, DropoffZip) AS correlation 
	FROM RawDataSet
	
	0.7908340563197516
	
5. Which zip codes have the highest demand for Uber Services in Charlotte, NC
	
	SELECT pickupzip, Count(*) 
	FROM Uber_Min_Zip
	Group BY pickupzip
	Order BY Count Desc

	
28208	3
28227	3
29732	2
28212	2
28205	2
28079	1
28215	1
29730	1
28207	1
28203	1
28107	1
28206	1
28214	1
	
6. What is the average trip duration for different job titles
	SELECT AVG(trip_time) FROM RawDataSet
	
	16.8000000000000000
	
7. Is ther a difference in salary between male and female passengers who use Uber services in Charlotte, NC?
	
	SELECT gender, ROUND(AVG(salary) -3)
	FROM RawDataSet
	GROUP BY gender
	
"Female" 40465
"Male"	 83192
	

	
8. Is there a relationship between trip duration and pickup/drop off zip codes?
	
	SELECT pickupzip, dropoffzip, AVG(trip_time)
	FROM RawDataSET
	GROUP BY pickupzip, dropoffzip
	
29732	29730	25.0000000000000000
28227	28270	27.0000000000000000
28214	28208	8.0000000000000000
28206	28205	11.0000000000000000
28207	28206	18.0000000000000000
28227	28227	12.0000000000000000
28205	28215	17.5000000000000000
28079	28079	11.0000000000000000
29730	28204	30.0000000000000000
28107	28208	40.0000000000000000
28208	28203	7.0000000000000000
28212	28105	12.0000000000000000
28203	28273	8.0000000000000000
28208	28208	11.0000000000000000
28215	28207	19.0000000000000000
28212	28270	14.0000000000000000
	
	SELECT pickupzip, AVG(trip_time)
	FROM RawDataSET
	GROUP BY pickupzip
	
		SELECT dropoffzip, AVG(trip_time)
	FROM RawDataSET
	GROUP BY dropoffzip
	
	9. What are the salary amounts for each passenger?
	
	SELECT FirstName, LastName, jobtitle, Salary FROM RawDataSet
	ORDER BY Salary DESC
	
"Matthew"	"Parker"	"CEO Tech"	349973
"Lisa"	"Johnson"	"Interior Designer"	128409
"Sophia"	"Smith"	"Safety Officer"	105031
"Nia"	"Parker"	"HR"	75537
"Darnell"	"Taylor"	"Nurse"	75000
"Tia"	"Anderson"	"Nurse"	62532
"Jada"	"Allen"	"Assistant Manager"	44436
"Rashad"	"Davis"	"Assembly Worker"	43910
"John"	"Thompson"	"Meat Cutter"	40189
"Aaliyah"	"Johnson"	"Pharmacy Tech"	40000
"Maurice"	"King"	"Package Handler"	37440
"Kendrick"	"Jones"	"Line Cook"	35855
"Isabella"	"Martinez"	"House Cleaner"	34665
"Deja"	"Thompson"	"Cashier Fast Food"	23000
"Ebony"	"Turner"	"Cashier"	12480
"Jamal"	"Williams"	"Student"	0
"Mary"	"Johnson"	"Retired"	0
"Jasmine"	"Brown"	"Student"	0
"Ebony"	"Davis"	"Student"	0
"Ruth"	"Wilson"	"Retired"	0
	

-- 10.Find the total number of passengers on this day?
	
SELECT COUNT(employeeid) From DATA
20
		
	SELECT * FROM Uber_Min_Zip
	SELECT * FROM RawDataSet
	
11. Are there any differences in trip duration based on gender?
	
	SELECT gender, AVG(trip_time) 
	FROM RawDataSET
	GROUP BY gender
	
"Female"	15.6153846153846154
"Male"		19.0000000000000000
	
	12. . Are there any differences in trip duration based on gender, race?
	
	SELECT gender, race, AVG(trip_time) 
	FROM RawDataSET
	GROUP BY gender,race
	
"Male"		"black"		19.4000000000000000
"Female"	"white"		19.2500000000000000
"Female"	"hispanic"	8.0000000000000000
"Male"		"white"		18.0000000000000000
"Female"	"black"		14.7500000000000000

	SELECT gender, race, AVG(trip_time) 
	FROM RawDataSET
	GROUP BY gender,race
	
	13.SELECT FirstName, LastName, Rating FROM RawDataSET
	
"Aaliyah"	"Johnson"	5
"Jamal"	"Williams"	5
"Jasmine"	"Brown"	5
"Matthew"	"Parker"	5
"Sophia"	"Smith"	5
"Lisa"	"Johnson"	5
"Kendrick"	"Jones"	5
"Maurice"	"King"	5
"Ebony"	"Turner"	5
"Darnell"	"Taylor"	5
"Rashad"	"Davis"	5
"Ruth"	"Wilson"	5
"Nia"	"Parker"	5
"Isabella"	"Martinez"	5
"Jada"	"Allen"	5
"Tia"	"Anderson"	5
"Mary"	"Johnson"	5
"Deja"	"Thompson"	5
"Ebony"	"Davis"	5
"John"	"Thompson"	5
	
SELECT * FROM RawDataSet
	
-- 14. What is the gender & race count
	
	SELECT gender, race, Count(*)
	FROM RawDataSet
	Group BY gender,race
	ORDER BY COUNT;
	
"Female"	"hispanic"	1
"Male"	    "white"	    2
"Female"	"white"   	4
"Male"	    "black"	    5
"Female"	"black"	    8
	
-- 15. What is the gender and race count
	
	SELECT race, COUNT(*)
	FROM RawDataSet
	GROUP BY race
	ORDER BY race

"black"		13
"hispanic"	1
"white"		6
	
-- 16. What is the gender, race, rating, jobtitle count	
	
	SELECT gender, race, rating, jobtitle, Count(*)
	FROM RawDataSet
	Group BY gender,race, rating, jobtitle
	
"Male"		"black"		5	"Line Cook"	1
"Female"	"black"		5	"HR"		1
"Female"	"black"		5	"Cashier Fast Food"	1
"Male"		"black"		5	"Package Handler"	1
"Female"	"black"		5	"Cashier"	1
"Male"		"white"		5	"Meat Cutter"	1
"Male"		"white"		5	"CEO Tech"	1
"Female"	"black"		5	"Student"	2
"Male"		"black"		5	"Nurse"	1
"Female"	"white"		5	"Retired"	2
"Female"	"white"		5	"Interior Designer"	1
"Female"	"hispanic"	5	"House Cleaner"	1
"Male"		"black"		5	"Student"	1
"Female"	"white"		5	"Safety Officer"	1
"Female"	"black"		5	"Nurse"	1
"Female"	"black"		5	"Pharmacy Tech"	1
"Female"	"black"		5	"Assistant Manager"	1
"Male"		"black"		5	"Assembly Worker"	1
	
17. -- Retrieve the passenger first,last,title, with the highest salary

SELECT FirstName, LastName, MAX(Salary) AS HighestSalary
	FROM DATA
	GROUP BY FirstName, LastName
	order by MAX(Salary) DESC
	LIMIT 1
	
	"Matthew"	"Parker"	349973