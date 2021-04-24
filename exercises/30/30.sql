USE northwind;

SELECT
    c.customerid AS customers_customerid, 
    o.customerid AS orders_customerid
FROM
    customers c
LEFT JOIN
    orders o
ON
    c.customerid = o.customerid
WHERE
    o.customerid IS NULL;
