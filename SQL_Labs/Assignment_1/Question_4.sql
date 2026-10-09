CREATE DATABASE dentist;
USE dentist;

create table employee (
    name varchar(25),
    job_title varchar(25),
    employee_id varchar(8),
    salary numeric(8,2),
    primary key (employee_id)
);
create table patient (
    name varchar(25),
    health_card_num varchar(10),
    insurance_num int,
    phone_num numeric(10,0),
    date_of_birth date,
    primary key (health_card_num)
);
create table appointment (
    appt_id varchar(10),
    room varchar(4),
    appt_date date,
    start_time time,
    end_time time,
    patient_id varchar(10),
    primary key (appt_id)
);
create table room (
    room_num varchar(4),
    capacity int,
    primary key (room_num)
);
create table works (
    employee_id varchar(8),
    appt_id varchar(10),
    primary key (employee_id, appt_id)
);
