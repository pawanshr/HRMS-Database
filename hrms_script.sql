
-- hrms leave 
create database seva_hrms;
use seva_hrms;

-- Creating employee table
CREATE TABLE employee (
    emp_id int NOT NULL,
    fname varchar(100) NOT NULL,
    lname varchar(100),
    email varchar(100),
    designation varchar(100),
    project varchar(100),
    PRIMARY KEY (emp_id)
);


-- creating employee leave record table
CREATE TABLE emp_leave (
    emp_leave_id int NOT NULL,
    emp_id int,
    from_date date,
    to_date date,
    leave_type varchar(100),
    leave_status varchar(100),
    PRIMARY KEY (emp_leave_id),
	FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

-- creating inventory table as item
CREATE TABLE  item (
	item_id int NOT NULL,
	itemname varchar(255) NOT NULL,
	item_qty int NOT NULL,
	PRIMARY KEY (item_id)
 );

 -- creating item ordered by employee and its status
CREATE TABLE  emp_item (
	emp_item_id int auto_increment,
	emp_req_status varchar (255) NOT NULL,
	item_id int NOT NULL,
	emp_id int NOT NULL,
	PRIMARY KEY (emp_item_id),
	FOREIGN KEY (item_id) REFERENCES item(item_id),
	FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);


CREATE TABLE questionAns (
qid int Primary Key,
question text(4000),
checkbox1 text(2000),
checkbox2 text(2000),
checkbox3 text(2000),
checkbox4 text(2000)
);

CREATE table Result (
emp_id int not null,
Total_Mark int,
Obtained_Mark int,
Present_date date,
FOREIGN key (emp_id) references employee(emp_id)
);
