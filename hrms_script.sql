
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
item_id int not null,
itemname varchar(255) NOT NULL,
item_qty int
 );
