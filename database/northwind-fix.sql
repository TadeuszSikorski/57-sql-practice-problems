USE northwind;

DROP TABLE IF EXISTS customergroupthreshold;

CREATE TABLE customergroupthreshold (
    groupname varchar(15) NOT NULL,
    rangebottom real NOT NULL,
    rangetop real NOT NULL
);

INSERT INTO customergroupthreshold VALUES ('Low', 0.0000, 999.9999);
INSERT INTO customergroupthreshold VALUES ('Medium', 1000.0000, 4999.9999);
INSERT INTO customergroupthreshold VALUES ('High', 5000.0000, 9999.9999);
INSERT INTO customergroupthreshold VALUES ('Very High', 10000.0000, 922337203685477.5807);