USE northwind;

SELECT
    o.orderid, 
    o.orderdate, 
    s.companyname AS shipper
FROM
    orders o
INNER JOIN
    shippers s
ON 
    o.shipvia = s.shipperid
WHERE 
    o.orderid < 10300 
ORDER BY
    o.orderid;