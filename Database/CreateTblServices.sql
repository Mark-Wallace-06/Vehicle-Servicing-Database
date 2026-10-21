-- This table stores all service bookings for cars
CREATE TABLE SERVICES (
    service_id        VARCHAR(20)  NOT NULL PRIMARY KEY,   -- e.g. 'S2006-101'
    reg_no            VARCHAR(20)  NOT NULL,               -- Car being serviced
    dropoff_date      DATE         NOT NULL,               -- e.g. '2020-06-17'
    dropoff_time      TIME(0)      NOT NULL,               -- e.g. '08:30:00'
    description       VARCHAR(255) NOT NULL,               -- work_required
    mileage           INT          NOT NULL,               -- milage
    next_service_date DATE         NULL,                   -- some next_service are blank
    customer_id       VARCHAR(10)  NOT NULL,               -- e.g. 'D13-101'
    CONSTRAINT FK_SERVICES_CARS
        FOREIGN KEY (reg_no)
        REFERENCES CARS(reg_no),
    CONSTRAINT FK_SERVICES_CUSTOMERS
        FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id)
);

