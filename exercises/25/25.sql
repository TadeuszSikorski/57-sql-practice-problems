USE northwind;

SELECT
    shipcountry,
    AVG(freight) AS averagefreight
FROM
    orders
GROUP BY
    shipcountry
ORDER BY
    averagefreight DESC
LIMIT 3;