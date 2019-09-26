CREATE TABLE payment
(
	paymentID  varchar(5) not null primary key,
	paymentType varchar(20) not null ,
	amount int NOT NULL,
	StudentID varchar(8) NOT NULL,
	branch_no varchar(5) not null,
	foreign key (StudentID) references student(StudentID),
	foreign key (branch_no) references branch(branch_no)
);