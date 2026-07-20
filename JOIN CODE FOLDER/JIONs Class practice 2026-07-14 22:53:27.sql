-- Databricks notebook source
SELECT *
FROM class_topic_practices.default.joins_orders;
------------------------------------------------
SELECT *
FROM class_topic_practices.default.joins_customers;
-----------------------------------------------------------------------
-- Joining Order's table with Customers's table using A Full Outer JOIN
-----------------------------------------------------------------------

SELECT
    Customer_ID,
    `Customer Name`,
    Order_id,
    `Product`
FROM class_topic_practices.default.joins_customers AS C
FULL OUTER JOIN class_topic_practices.default.joins_orders AS O
ON 'C.Customer ID' = 'O.Customer ID';
