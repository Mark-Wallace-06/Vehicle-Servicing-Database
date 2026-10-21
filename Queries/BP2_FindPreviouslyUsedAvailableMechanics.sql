-- Business Process 2: Find mechanics who previously worked on a car and are available on the new service date

SELECT 
    DISTINCT m.mechanic_id,
    m.mech_name,
    m.grade,
    COUNT(ms2.service_id) AS jobs_on_day
FROM SERVICES s
JOIN MECH_SERVICE ms1 
    ON s.service_id = ms1.service_id
JOIN MECHANICS m 
    ON ms1.mech_id = m.mechanic_id
LEFT JOIN SERVICES s2 
    ON s2.dropoff_date = (
        SELECT dropoff_date 
        FROM SERVICES 
        WHERE service_id = 'S2006-200'
    )
LEFT JOIN MECH_SERVICE ms2 
    ON s2.service_id = ms2.service_id 
   AND ms2.mech_id = m.mechanic_id
WHERE s.reg_no = (
    SELECT reg_no 
    FROM SERVICES 
    WHERE service_id = 'S2006-200'
)
GROUP BY m.mechanic_id, m.mech_name, m.grade
HAVING COUNT(ms2.service_id) = 0;
