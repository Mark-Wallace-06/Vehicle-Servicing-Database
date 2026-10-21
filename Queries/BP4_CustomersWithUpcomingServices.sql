-- Business Process 4: List customers with cars due for service between two dates

SELECT 
    c.customer_name,
    c.cust_email,
    ca.make,
    ca.reg_no,
    s.next_service_date
FROM SERVICES s
JOIN CARS ca 
    ON s.reg_no = ca.reg_no
JOIN CUSTOMERS c 
    ON s.customer_id = c.customer_id
WHERE s.next_service_date BETWEEN '2021-06-20' AND '2021-06-25'
ORDER BY s.next_service_date;
