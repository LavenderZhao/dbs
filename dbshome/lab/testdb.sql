DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer (
    custid  varchar(10),
    name    varchar(20),
    city    varchar(30),
    address varchar(30)
);

INSERT INTO Customer VALUES
    ('cust1','Renton','Edinburgh','2 Wellington Pl'),
    ('cust2','Watson','London','221B Baker St'),
    ('cust3','Holmes','London','221B Baker St');

DROP TABLE IF EXISTS Account;

CREATE TABLE Account (
    accnum  varchar(12),
    custid  varchar(10),
    balance numeric(14,2)
);

INSERT INTO Account VALUES
    ('123321','cust3',1330),
    ('243576','cust1',-120);
