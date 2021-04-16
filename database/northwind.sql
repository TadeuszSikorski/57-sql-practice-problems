DROP DATABASE IF EXISTS northwind;

CREATE DATABASE northwind;

USE northwind;

--
-- drop tables
--

DROP TABLE IF EXISTS customercustomerdemo;
DROP TABLE IF EXISTS customerdemographics;
DROP TABLE IF EXISTS employeeterritories;
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS shippers;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS territories;
DROP TABLE IF EXISTS usstates;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS region;
DROP TABLE IF EXISTS employees;

--
-- Table name: categories
--

CREATE TABLE categories (
    categoryid          smallint        NOT NULL    PRIMARY KEY,
    categoryname        varchar(15)     NOT NULL,
    description         text,
    picture             binary
);


--
-- Table name: customers
--

CREATE TABLE customers (
    customerid      varchar(5)      NOT NULL    PRIMARY KEY,
    companyname     varchar(40)     NOT NULL,
    contactname     varchar(30),
    contacttitle    varchar(30),
    address         varchar(60),
    city            varchar(15),
    region          varchar(15),
    postalcode      varchar(10),
    country         varchar(15),
    phone           varchar(24),
    fax             varchar(24)
);


--
-- Table name: employees
--

CREATE TABLE employees (
    employeeid          smallint        NOT NULL    PRIMARY KEY,
    lastname            varchar(20)     NOT NULL,
    firstname           varchar(10)     NOT NULL,
    title               varchar(30),
    titleofcourtesy     varchar(25),
    birthdate           date,
    hiredate            date,
    address             varchar(60),
    city                varchar(15),
    region              varchar(15),
    postalcode          varchar(10),
    country             varchar(15),
    homephone           varchar(24),
    extension           varchar(4),
    photo               binary,
    notes               text,
    reportsto           smallint,
    photopath           varchar(255)
);


--
-- Table name: shippers
--

CREATE TABLE shippers (
    shipperid       smallint        NOT NULL    PRIMARY KEY,
    companyname     varchar(40)     NOT NULL,
    phone           varchar(24)
);


--
-- Table name: orders
--

CREATE TABLE orders (
    orderid             smallint        NOT NULL    PRIMARY KEY,
    customerid          varchar(5),
    employeeid          smallint,
    orderdate           date,
    requireddate        date,
    shippeddate         date,
    shipvia             smallint,
    freight             real,
    shipname            varchar(40),
    shipaddress         varchar(60),
    shipcity            varchar(15),
    shipregion          varchar(15),
    shippostalcode      varchar(10),
    shipcountry         varchar(15)
);


--
-- Table name: suppliers
--

CREATE TABLE suppliers (
    supplierid          smallint        NOT NULL    PRIMARY KEY,
    companyname         varchar(40)     NOT NULL,
    contactname         varchar(30),
    contacttitle        varchar(30),
    address             varchar(60),
    city                varchar(15),
    region              varchar(15),
    postalcode          varchar(10),
    country             varchar(15),
    phone               varchar(24),
    fax                 varchar(24),
    homepage            text
);


--
-- Table name: products
--

CREATE TABLE products (
    productid           smallint        NOT NULL    PRIMARY KEY,
    productname         varchar(40)     NOT NULL,
    supplierid          smallint,
    categoryid          smallint,
    quantityperunit     varchar(20),
    unitprice           real,
    unitsinstock        smallint,
    unitsonorder        smallint,
    reorderlevel        smallint,
    discontinued        integer         NOT NULL
);


--
-- Table name: order_details
--

CREATE TABLE order_details (
    orderid                     smallint    NOT NULL,
    productid                   smallint    NOT NULL,
    unitprice                   real        NOT NULL,
    quantity                    smallint    NOT NULL,
    discount                    real        NOT NULL,
    CONSTRAINT `pk_order_details` PRIMARY KEY (orderid, productid)
);

--
-- Table name: region
--

CREATE TABLE region (
    regionid            smallint        NOT NULL    PRIMARY KEY,
    regiondescription   varchar(8)      NOT NULL
);


--
-- Table name: territories
--

CREATE TABLE territories (
    territoryid                 varchar(20)         NOT NULL    PRIMARY KEY,
    territorydescription        varchar(16)         NOT NULL,
    regionid                    smallint            NOT NULL
);


--
-- Table name: employeeterritories
--

CREATE TABLE employeeterritories (
    employeeid          smallint        NOT NULL,
    territoryid         varchar(20)     NOT NULL,
    CONSTRAINT `pk_employeeterritories` PRIMARY KEY (employeeid, territoryid)
);


--
-- Table name: usstates
--

CREATE TABLE usstates (
    stateid             smallint        NOT NULL    PRIMARY KEY,
    statename           varchar(100),
    stateabbr           varchar(2),
    stateregion         varchar(50)
);


--
-- Table name: customerdemographics
--

CREATE TABLE customerdemographics (
    customertypeid      char    NOT NULL    PRIMARY KEY,
    customerdesc        text
);

--
-- Table name: customercustomerdemo
--

CREATE TABLE customercustomerdemo (
    customerid          char    NOT NULL,
    customertypeid      char    NOT NULL,
    PRIMARY KEY (customerid, customertypeid)
);