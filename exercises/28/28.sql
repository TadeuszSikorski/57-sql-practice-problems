USE northwind;

SELECT
    shipcountry,
    AVG(freight) AS averagefreight
FROM
    orders
WHERE
    orderdate >= 
        (SELECT DATE_SUB(
            (SELECT MAX(orderdate)
             FROM orders)
        , INTERVAL 12 MONTH))
GROUP BY
    shipcountry
ORDER BY
    averagefreight DESC
LIMIT 
    3;