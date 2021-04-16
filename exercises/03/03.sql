USE northwind;

SELECT
    firstname, 
    lastname, 
    hiredate
FROM
    employees
WHERE 
    title = "Sales Representative";