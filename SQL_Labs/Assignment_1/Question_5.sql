LOAD DATA LOCAL INFILE 'employee.csv' INTO TABLE employee
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(employee_id, name, job_title, salary);
LOAD DATA LOCAL INFILE 'patient.csv' INTO TABLE patient
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(health_card_num, name, insurance_num, phone_num, date_of_birth);
LOAD DATA LOCAL INFILE 'room.csv' INTO TABLE room
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(room_num, capacity);
LOAD DATA LOCAL INFILE 'appointment.csv' INTO TABLE appointment
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(appt_id, room, appt_date, start_time, end_time, patient_id);
LOAD DATA LOCAL INFILE 'works.csv' INTO TABLE works
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(appt_id, employee_id);
