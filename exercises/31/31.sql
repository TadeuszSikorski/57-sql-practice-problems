USE northwind;

SELECT
    c.customerid AS customerid, 
    o.customerid AS customerid
FROM
    customers c
LEFT JOIN
    orders o
ON
    c.customerid = o.customerid
AND
    o.employeeid = 4
WHERE
    o.customerid IS NULL;
