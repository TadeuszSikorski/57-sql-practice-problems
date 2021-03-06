USE northwind;

SELECT
    productid,
    productname, 
    unitsinstock,
    unitsonorder,
    reorderlevel,
    discontinued
FROM
    products
WHERE
    unitsinstock + unitsonorder <= reorderlevel
AND
    discontinued = 0
ORDER BY
    productid;