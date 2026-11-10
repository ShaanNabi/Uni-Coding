SELECT employee_id, name
FROM employee
WHERE job_title = 'Dentist';

SELECT name, job_title
FROM employee
WHERE salary < 200000;

SELECT DISTINCT patient_id
FROM appointment
WHERE appt_date = '2026-01-21' OR appt_date = '2026-01-23';

SELECT name
FROM patient
WHERE date_of_birth = '2006-10-01';

SELECT room_num
FROM room
WHERE capacity >= 5;
