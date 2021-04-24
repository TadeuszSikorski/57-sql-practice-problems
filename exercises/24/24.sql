USE northwind;

SELECT
    customerid,
    companyname, 
    region
FROM
    customers
ORDER BY
    region, customerid;