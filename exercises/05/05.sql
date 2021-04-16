USE northwind;

SELECT
    orderid, 
    orderdate
FROM
    orders
WHERE 
    employeeid = 5;