USE northwind;

SELECT
    country,
    city, 
    COUNT(customerid) AS totalcustomer
FROM
    customers
GROUP BY
    country,
    city
ORDER BY
    totalcustomer DESC;