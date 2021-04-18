USE northwind;

SELECT
    productid, 
    productname
FROM
    products
WHERE 
    productname LIKE "%queso%";

