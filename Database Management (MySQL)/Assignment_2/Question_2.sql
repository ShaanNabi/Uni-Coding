-- (a)
CREATE VIEW emp_appt_num(employee_id, appt_date, num_appt) AS
SELECT employee_id, appt_date, COUNT(appt_id)
FROM works NATURAL JOIN appointment
GROUP BY employee_id, appt_date;

-- (b)
GRANT SELECT ON works TO DentistAdmin;
GRANT SELECT ON appointment TO DentistAdmin;