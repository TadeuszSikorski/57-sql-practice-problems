USE northwind;

SELECT
    c.customerid,
    c.companyname,
    o.orderid,
    SUM(od.unitprice * od.quantity) AS total_amount
FROM
    customers c
INNER JOIN
    orders o
ON
    c.customerid = o.customerid
INNER JOIN
    order_details od
ON  
    o.orderid = od.orderid
WHERE
    EXTRACT(YEAR FROM o.orderdate) = 1998
GROUP BY
    c.customerid,
    c.companyname,
    o.orderid
HAVING
    SUM(od.unitprice * od.quantity) >= 10000
ORDER BY
  total_amount DESC;