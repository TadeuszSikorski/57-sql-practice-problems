USE northwind;

SELECT
    firstname, 
    lastname, 
    title, 
    CONVERT(birthdate, Date) AS dateonlybirthdate
FROM
    employees
ORDER BY
    birthdate;