-- This table stores details about each car owned by customers
CREATE TABLE CARS (
    reg_no              VARCHAR(20)   NOT NULL PRIMARY KEY, -- Car registration, e.g. 'BJI 111'
    make                VARCHAR(50)   NOT NULL,             -- e.g. 'Vauxhall'
    model               VARCHAR(50)   NULL,                 -- Some rows have no model recorded
    date_of_manufacture DATE          NULL,                 -- Some rows have no manufacture date
    customer_id         VARCHAR(10)   NOT NULL,             -- Links to CUSTOMERS.customer_id
    CONSTRAINT FK_CARS_CUSTOMERS
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id)
);
