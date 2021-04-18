USE northwind;

SELECT
    orderid,
    productid, 
    unitprice,
    quantity,
    (unitprice * quantity) AS totalprice
FROM
    order_details
ORDER BY 
    orderid, 
    productid;