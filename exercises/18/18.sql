USE northwind;

SELECT
    productid,
    productname, 
    suppliers.companyname AS supplier
FROM
    products
INNER JOIN
    suppliers
ON 
    products.supplierid = suppliers.supplierid;
ORDER BY
    productid DESC;