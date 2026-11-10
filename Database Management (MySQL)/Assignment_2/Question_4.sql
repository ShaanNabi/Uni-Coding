-- (a)
SELECT job_title, AVG(salary) AS avg_salary
FROM employee
GROUP BY job_title
ORDER BY avg_salary DESC;

-- (b)
UPDATE employee
SET salary = CASE
    WHEN salary < 95000 THEN salary * 1.08
    ELSE salary * 1.03
    END;
SELECT * 
FROM employee;

-- (c)
SELECT MAX(total_time) AS max_total_time
FROM (
    SELECT employee_id, SUM(end_time - start_time)
    FROM works NATURAL JOIN appointment
    GROUP BY employee_id
    ) AS emp_total(employee_id, total_time);
    
-- (d)
SELECT appt_id, COUNT(employee_id) AS num_employees
FROM appointment 
NATURAL LEFT OUTER JOIN works
GROUP BY appt_id;

-- (e) With ALL Cluase
SELECT name
FROM employee
WHERE salary > ALL (
    SELECT salary
    FROM employee
    WHERE job_title = 'Admin'
    );

-- (e) Without ALL Clause
SELECT name
FROM employee
WHERE salary > (
    SELECT MAX(salary)
    FROM employee
    WHERE job_title = 'Admin'
    );

-- (f) Using Joins
SELECT employee.name AS employee_name, patient.name AS patient_name, appt_date, appointment.appt_id
FROM employee 
JOIN works ON employee.employee_id = works.employee_id
JOIN appointment ON works.appt_id = appointment.appt_id
JOIN patient ON appointment.patient_id = patient.health_card_num;

-- (f) Without the Joins
SELECT employee.name AS employee_name, patient.name AS patient_name, appt_date, appointment.appt_id
FROM employee, works, appointment, patient
WHERE employee.employee_id = works.employee_id
AND works.appt_id = appointment.appt_id
AND appointment.patient_id = patient.health_card_num;