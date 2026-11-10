-- (a)
ALTER TABLE room ADD CHECK (capacity > 0);
SHOW CREATE TABLE room;

-- (b)
ALTER TABLE employee MODIFY salary NUMERIC(8,2) DEFAULT 75000;
SHOW CREATE TABLE employee;

-- (c)
ALTER TABLE patient MODIFY name VARCHAR(25) NOT NULL;
SHOW CREATE TABLE patient;

-- (d)
ALTER TABLE appointment MODIFY start_time TIME DEFAULT '09:00:00';
SHOW CREATE TABLE appointment;

-- (e)
UPDATE employee
SET job_title = 'Hygienist'
WHERE job_title = 'Hygenist';
SELECT * FROM employee;