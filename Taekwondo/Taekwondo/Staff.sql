create table staff 
(
staffID varchar(5) not null primary key,
fname varchar(10) NOT NULL,
lname varchar(10) NOT NULL,
position varchar(10) NOT NULL,
sex char not null check(sex IN ('M','F')),
salary int not null,
branch_no varchar(5) not null,
foreign key (branch_no) references branch(branch_no)
); 