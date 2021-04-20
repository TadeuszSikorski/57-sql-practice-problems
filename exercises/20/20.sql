USE northwind;

SELECT
    c.categoryname, 
    COUNT(p.productid) AS totalproducts
FROM
    products p
INNER JOIN
    categories c
ON 
    p.categoryid = c.categoryid
GROUP BY
    p.categoryid
ORDER BY
    totalproducts DESC;