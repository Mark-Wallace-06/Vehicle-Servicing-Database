-- Business Process 5: Make a mechanic unavailable and list affected services

INSERT INTO MECH_UNAVAIL (
    unavail_id,
    mechanic_id,
    start_date,
    end_date
)
VALUES (
    'UN001',
    'E1037',
    '2020-06-20',
    '2020-06-22'
);

SELECT 
    mu.mechanic_id,
    m.mech_name,
    s.service_id,
    s.dropoff_date,
    s.reg_no
FROM MECH_UNAVAIL mu
JOIN MECH_SERVICE ms 
    ON mu.mechanic_id = ms.mech_id
JOIN SERVICES s 
    ON ms.service_id = s.service_id
JOIN MECHANICS m 
    ON mu.mechanic_id = m.mechanic_id
WHERE s.dropoff_date BETWEEN mu.start_date AND mu.end_date
ORDER BY s.dropoff_date;

SELECT * FROM MECH_UNAVAIL;
