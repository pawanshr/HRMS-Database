
-- hrms leave 
create database seva_hrms;
use seva_hrms;


Create Table employee(
emp_ID int auto_increment primary key,
fname varchar(255) NOT NULL,
lname varchar(255)NOT NULL,
email varchar(255) NOT NULL,
designation varchar(100) NOT NULL,
project varchar(100) NOT NULL
);


Create table emp_leave(
emp_id int not null,
from_date date,
to_date date,
leave_type varchar(255),
leave_status varchar(255),
reporting_mgr varchar(255),
Foreign key(emp_id) references employee(emp_id)
);

Create table item (
item_id int NOT NULL,
itemname varchar(255) NOT NULL,
item_qty int NOT NULL
 );

CREATE TABLE questionAns (
qid varchar(20) Primary,
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
