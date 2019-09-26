CREATE TABLE Student
(
	StudentID varchar(8) NOT NULL PRIMARY KEY,
	Name char(14) not null,
	sex char not null check(sex IN ('M','F')),
	age int not null,
	city char(20) not null,
	branch_no varchar(5) not null,
	staffID varchar(5) not null,
	foreign key (branch_no) references branch(branch_no),
	foreign key (staffID) references staff(staffID)
);
