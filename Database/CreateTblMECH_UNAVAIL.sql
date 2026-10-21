-- This table stores periods when a mechanic is unavailable (e.g. holidays, illness)
CREATE TABLE MECH_UNAVAIL (
    unavail_id   INT          NOT NULL PRIMARY KEY,    -- Unique ID for each unavailability record
    mechanic_id  VARCHAR(10)  NOT NULL,                -- Mechanic who is unavailable
    start_date   DATE         NOT NULL,                -- Start of unavailability
    end_date     DATE         NOT NULL,                -- End of unavailability
    CONSTRAINT FK_MECH_UNAVAIL_MECHANICS
        FOREIGN KEY (mechanic_id)
        REFERENCES MECHANICS(mechanic_id)              -- Link unavailability to a mechanic
);
