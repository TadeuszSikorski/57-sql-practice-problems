USE northwind;

SELECT
    shipcountry,
    AVG(freight) AS averagefreight
FROM
    orders
WHERE
    EXTRACT(YEAR FROM orderdate) = 1997
GROUP BY
    shipcountry
ORDER BY
    averagefreight DESC
LIMIT 
    3;