USE northwind;

SELECT
    contacttitle,
    COUNT(contacttitle) AS totalcontacttitle
FROM
    customers
GROUP BY
    contacttitle
ORDER BY
    totalcontacttitle DESC;