-- Business Process 3: List total time spent per mechanic between two dates

SELECT 
    m.mechanic_id,
    m.mech_name,
    m.grade,
    SUM(
        DATEPART(HOUR, ms.time_spent) * 60 +
        DATEPART(MINUTE, ms.time_spent)
    ) AS total_minutes_worked
FROM MECH_SERVICE ms
JOIN MECHANICS m 
    ON ms.mech_id = m.mechanic_id
JOIN SERVICES s 
    ON ms.service_id = s.service_id
WHERE s.dropoff_date BETWEEN '2020-06-17' AND '2020-06-18'
GROUP BY m.mechanic_id, m.mech_name, m.grade;
