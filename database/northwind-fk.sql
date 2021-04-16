USE northwind;

--
-- Name: fk_orders_customers
--

ALTER TABLE orders
    DROP FOREIGN KEY IF EXISTS `fk_orders_customers`;

ALTER TABLE orders
    ADD CONSTRAINT `fk_orders_customers`  
        FOREIGN KEY (customerid) REFERENCES customers (customerid);


--
-- Name: fk_orders_employees
--

ALTER TABLE orders
    DROP FOREIGN KEY IF EXISTS `fk_orders_employees`;

ALTER TABLE orders
    ADD CONSTRAINT `fk_orders_employees`  
        FOREIGN KEY (employeeid) REFERENCES employees (employeeid);


--
-- Name: fk_orders_shippers
--

ALTER TABLE orders
    DROP FOREIGN KEY IF EXISTS `fk_orders_shippers`;

ALTER TABLE orders
    ADD CONSTRAINT `fk_orders_shippers`  
        FOREIGN KEY (shipvia) REFERENCES shippers (shipperid);


--
-- Name: fk_order_details_products
--

ALTER TABLE order_details
    DROP FOREIGN KEY IF EXISTS `fk_order_details_products`;

ALTER TABLE order_details
    ADD CONSTRAINT `fk_order_details_products`  
        FOREIGN KEY (productid) REFERENCES products (productid);


--
-- Name: fk_order_details_orders
--

ALTER TABLE order_details
    DROP FOREIGN KEY IF EXISTS `fk_order_details_orders`;

ALTER TABLE order_details
    ADD CONSTRAINT `fk_order_details_orders`  
        FOREIGN KEY (orderid) REFERENCES orders (orderid);


--
-- Name: fk_products_categories
--

ALTER TABLE products
    DROP FOREIGN KEY IF EXISTS `fk_products_categories`;

ALTER TABLE products
    ADD CONSTRAINT `fk_products_categories`  
        FOREIGN KEY (categoryid) REFERENCES categories (categoryid);


--
-- Name: fk_products_suppliers
--

ALTER TABLE products
    DROP FOREIGN KEY IF EXISTS `fk_products_suppliers`;

ALTER TABLE products
    ADD CONSTRAINT `fk_products_suppliers`  
        FOREIGN KEY (supplierid) REFERENCES suppliers (supplierid);


--
-- Name: fk_territories_region
--

ALTER TABLE territories
    DROP FOREIGN KEY IF EXISTS `fk_territories_region`;

ALTER TABLE territories
    ADD CONSTRAINT `fk_territories_region`  
        FOREIGN KEY (regionid) REFERENCES region (regionid);


--
-- Name: fk_employeeterritories_territories
--

ALTER TABLE employeeterritories
    DROP FOREIGN KEY IF EXISTS `fk_employeeterritories_territories`;

ALTER TABLE employeeterritories
    ADD CONSTRAINT `fk_employeeterritories_territories`  
        FOREIGN KEY (territoryid) REFERENCES territories (territoryid);


--
-- Name: fk_employeeterritories_employees
--

ALTER TABLE employeeterritories
    DROP FOREIGN KEY IF EXISTS `fk_employeeterritories_employees`;

ALTER TABLE employeeterritories
    ADD CONSTRAINT `fk_employeeterritories_employees`  
        FOREIGN KEY (employeeid) REFERENCES employees (employeeid);


--
-- Name: fk_customercustomerdemo_customerdemographics
--

ALTER TABLE customercustomerdemo
    DROP FOREIGN KEY IF EXISTS `fk_customercustomerdemo_customerdemographics`;

ALTER TABLE customercustomerdemo
    ADD CONSTRAINT `fk_customercustomerdemo_customerdemographics`  
        FOREIGN KEY (customertypeid) REFERENCES customerdemographics (customertypeid);


--
-- Name: fk_customercustomerdemo_customers
--

ALTER TABLE customercustomerdemo
    DROP FOREIGN KEY IF EXISTS `fk_customercustomerdemo_customers`;

ALTER TABLE customercustomerdemo
    ADD CONSTRAINT `fk_customercustomerdemo_customers`  
        FOREIGN KEY (customerid) REFERENCES customers (customerid);


--
-- Name: fk_employees_employees
--

ALTER TABLE employees
    DROP FOREIGN KEY IF EXISTS `fk_employees_employees`;

ALTER TABLE employees
    ADD CONSTRAINT `fk_employees_employees`  
        FOREIGN KEY (reportsto) REFERENCES employees (employeeid);