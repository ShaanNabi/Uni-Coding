create table instructor
	(
	 ID varchar(5), 
	 name varchar(20) not null, 
	 dept_name varchar(20), 
	 salary numeric(8,2) check (salary > 29000),
	 primary key (ID),
	 foreign key (dept_name) references department (dept_name)
		on delete set null
	);

INSERT INTO instructor 
VALUES (‘78910’, ‘Hinton’, ‘Comp. Sci.’ 1000000.00);