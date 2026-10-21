-- Business Process 1: Add a new service booking without assigning mechanics

INSERT INTO SERVICES 
(service_id, reg_no, dropoff_date, dropoff_time, description, mileage, next_service_date, customer_id)
VALUES
('S2006-200', 'BJI 111', '2025-12-01', '09:00:00', 
 'Annual service', 
 50000, '2026-12-01', 'D13-101');

-- Verification query for Business Process 1
SELECT * 
FROM SERVICES 
WHERE service_id = 'S2006-200';
