-- This table stores all customer details
CREATE TABLE CUSTOMERS (
    customer_id      VARCHAR(10)   NOT NULL PRIMARY KEY,  -- e.g. 'D13-101'
    customer_name    VARCHAR(100)  NOT NULL,              -- e.g. 'Bette Davis'
    cust_email       VARCHAR(100)  NULL,                  -- Some customers have no email
    cust_phone       VARCHAR(30)   NULL                   -- Some customers have no phone number
);


