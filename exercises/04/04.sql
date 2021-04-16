USE northwind;

SELECT
    firstname, 
    lastname, 
    hiredate
FROM
    employees
WHERE 
    title = "Sales Representative"
AND 
    country = "USA";