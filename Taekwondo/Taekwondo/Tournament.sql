create table tournament 
(
    tournamentID varchar(5) not null,
	Entry_Fee int not null,
	StudentID varchar(8) NULL,
	foreign key (StudentID) references student(StudentID)
);