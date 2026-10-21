-- This table links mechanics to services and stores how long each mechanic spent on a service
CREATE TABLE MECH_SERVICE (
    service_id  VARCHAR(20)  NOT NULL,                 -- e.g. 'S2006-101'
    mech_id     VARCHAR(10)  NOT NULL,                 -- e.g. 'E9274'
    time_spent  TIME(0)      NULL,                     -- Some rows have no time_spent
    CONSTRAINT PK_MECH_SERVICE
        PRIMARY KEY (service_id, mech_id),
    CONSTRAINT FK_MECH_SERVICE_SERVICES
        FOREIGN KEY (service_id)
        REFERENCES SERVICES(service_id),
    CONSTRAINT FK_MECH_SERVICE_MECHANICS
        FOREIGN KEY (mech_id)
        REFERENCES MECHANICS(mechanic_id)
);

