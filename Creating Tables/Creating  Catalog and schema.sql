-- Databricks notebook source
-- CREATE A DATABASE IN DATABRICKS --
------------------------------------
CREATE CATALOG IF NOT EXISTS june_intake

USE CATALOG june_intake;
CREATE SCHEMA IF NOT EXISTS students_profile;
--------------------------------------------
-- To drop is to delete: this code is used to delete the schema
---------------------------------------------
DROP SCHEMA students_profile;

-------------------------------------
-- This code is ude to create a schema within a database
-------------------------------------
CREATE SCHEMA IF NOT EXISTS students;
----------------------------------------
-- Database_name.Schema_name.Table_name--
--This Code is used to create table in our database and given schema
-----------------------------------------
CREATE OR REPLACE TABLE june_intake.students.profile
(student_id INT,
name STRING,
surname STRING,
age INT,
email STRING,
registration_DT DATE);

-------------
-- Checking my table with column only without information
-------------
SELECT *
FROM june_intake.students.profile;
------------------------
-- Inserting values into the table that we have created
--------------------------------------
INSERT INTO june_intake.students.profile
VALUES
    (101,'Rochester', 'Jones', 25, 'rochester@google.com', '2019-06-05'),
    (102,'Sive', 'Magazi', 25, 'sive@phalaphala.com', '1912-01-01'),
    (103,'Cassper', 'Zuma', 73, 'czuma@kandla.com', '2020-01-12'),
    (104,'Mbali', 'Hlapo', 41, 'mbali@cleaaning.com', '2010-01-12');
-----------------------------------------------------
-- TO CHECK THE TABLE WITH THE INFROMATION INSERTED ON THE ABOVE CODIND RUN THE SELECT * FROM TABLE
---------------------------------------------------
---- We use the delete function to remove a specific row from our data based on a specific condition
----------------------------------------------------
DELETE FROM june_intake.students.profile
WHERE age>50;
---------------------------------
-- RUN THE SELECT * FROM TABLE TO SEE THE RESULT OF THE ABOVE CODE IN THE TABLE
-----------------------------------------------
-- THIS CODE IS UPDATING THE TABLE AS PER THE CONDION ON THE CODE
---------------------------------------------------
UPDATE june_intake.students.profile
SET age=18
WHERE student_id IN (101);
---------------------------------
-- RUN THE SELECT * FROM TABLE TO SEE THE RESULT OF THE ABOVE CODE IN THE TABLE
-----------------------------------------------
I MUST INVESTIGATE WHAT THE BELOW CODE DOES
----------------------------------------------- 
ALTER TABLE june_intake.students.profile SET TBLPROPERTIES 
('delta.columnMapping.mode' = 'name',
  'delta.minReaderVersion' = '2',
  'delta.minWriterVersion' = '5');
---------------------------------
-- RUN THE SELECT * FROM TABLE TO SEE THE RESULT OF THE ABOVE CODE IN THE TABLE
-----------------------------------------------
-- THE CODE IS DROPINF COLUMN registration_DT(Deleting)
-------------------------------------------------
ALTER TABLE june_intake.students.profile
DROP COLUMN registration_DT;
---------------------------------
-- RUN THE SELECT * FROM TABLE TO SEE THE RESULT OF THE ABOVE CODE IN THE TABLE
-----------------------------------------------



