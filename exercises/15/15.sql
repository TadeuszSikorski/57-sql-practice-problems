USE northwind;

SELECT
    MIN(orderdate) AS firstorder
FROM
    orders;