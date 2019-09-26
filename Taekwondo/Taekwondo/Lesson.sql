Create table lesson 
(
    courseID varchar(5) not null,
	StudentID varchar(8) NOT NULL,
	staffID varchar(5) not null,
	foreign key (StudentID) references student(StudentID),
	foreign key (staffID) references staff(staffID),
);
