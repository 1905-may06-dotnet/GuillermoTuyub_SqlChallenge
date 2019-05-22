--doesn't run
create table employee(
Id					int not null primary key,
firstname 			varchar(30) not null,
lastname 			varchar(30) not null,
ssn 				int not null,
foreign key(deptId) References department(dtid)
)

create table empdetails(
detailsId 				int not null primary key,
foreign key(employeeID) References employee(id),
salary 					decimal(10,2) not null,
address1				varchar(50) not null,
address2 				varchar(50) not null,
city					varchar(32) not null,
state					varchar(16) not null,
country					varchar(32) not null,
)


create table department(
dtid			int not null primary key,
name			varchar(32) not null,
location		varchar(32) not null
)

go

insert into employee 
values
('John','Doe',222222222,1),
('Jane','Doe',111111111,2),
('Joseph','Dawn',323232323,3)


insert into empdetails
values
	(1,50000,'123 Main Street','apt 2','Reston','VA','United States'),
	(2,70000,'232 NotMain Street','','Miami','FL','United States'),
	(3,80000,'929 South Street','','New York','NY','United States')


insert into department
values(
	('Primary Department','Reston')
	('Secondary Deptartment','Reston')
	('Tertiary Department','California')
)
--add tina smith
alter table department add
	("Marketing","California")
	
alter table employee add
	("Tina","Smith",252252525,4)

alter table empdetails add
	(4,30000M,"add1","add2","New York","NY","United States")

select firstname from employee(where deptid == 4)

select Salary from empDetails 
where value in (select location
from department
where location == 4
)

update empDetails
set salary = 90000M
where employeeID = 4