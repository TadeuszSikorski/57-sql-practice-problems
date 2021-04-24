USE northwind;

SELECT
    e.employeeid,
    e.lastname,
    o.orderid,
    p.productname,
    od.quantity
FROM
    orders o
JOIN
    employees e
ON
    o.employeeid = e.employeeid
JOIN
    order_details od
ON
    o.orderid = od.orderid
JOIN
    products p
ON
    od.productid = p.productid
ORDER BY
    o.orderid, od.productid;