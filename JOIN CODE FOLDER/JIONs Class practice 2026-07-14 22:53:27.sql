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
    C.`Customer _ID`,
    C.`Customer Name `,
    O.Order_id,
    O.Product
FROM class_topic_practices.default.joins_customers AS C
FULL OUTER JOIN class_topic_practices.default.joins_orders AS O
ON C.`Customer _ID` = O.Customer_ID;
