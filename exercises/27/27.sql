USE northwind;

SELECT
    shipcountry,
    AVG(freight) AS averagefreight
FROM
    orders
WHERE
    orderdate 
    BETWEEN 
        '1997-01-01' 
    AND 
        '1998-01-01'
GROUP BY
    shipcountry
ORDER BY
    averagefreight DESC
LIMIT 
    3;