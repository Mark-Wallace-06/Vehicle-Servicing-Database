-- This table stores all mechanic details
CREATE TABLE MECHANICS (
    mechanic_id   VARCHAR(10)  NOT NULL PRIMARY KEY,   -- e.g. 'E9274'
    mech_name     VARCHAR(100) NOT NULL,               -- Mechanic full name
    mech_phone    VARCHAR(30)  NOT NULL,               -- Mechanic contact number
    grade         VARCHAR(30)  NOT NULL                -- e.g. Trainee, Mechanic, Senior Mechanic
);
