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


create table branch
(
branch_no varchar(5) not null,
city char(20) not null,
street varchar(25) not null,
zipcode numeric(5), 
    CONSTRAINT [PK_branch] PRIMARY KEY ([branch_no]) 
);


insert into branch values ('B001','Kuala Lumpur','Jalan Bukit',50100);
CREATE TABLE Student
(
	StudentID varchar(8) NOT NULL PRIMARY KEY,
	Name char(14) not null,
	sex char not null check(sex IN ('M','F')),
	age int not null,
	city char(20) not null,
	branch_no varchar(5) not null,
	staffID int not null,
	foreign key (branch_no) references branch(branch_no),
	foreign key (staffID) references staff(staffID)
);
Select * from branch;
insert into staff values ('S101','Amina','Khatun','Manager','F',2000,'B101');
insert into staff values ('S102','Abu','Yousuf','Employee','M',1200,'B001');
insert into staff values ('S103','Anas','Amin','Employee','M',1400,'B001');
insert into staff values ('S104','Akram','Khan','Manager','M',2000,'B002');
insert into staff values ('S105','Asma','Haque','Employee','F',1200,'B002');
insert into staff values ('S106','Ali','Younis','Manager','M',2000,'B003');
insert into staff values ('S107','Abdul','Ahad','Manager','M',2000,'B004');
insert into staff values ('S108','Nadira','Azmi','Employee','F',1400,'B004');
insert into staff values ('S109','Abdul','Gani','Manager','M',2000,'B005');
insert into staff values ('S110','Amir','Yousuf','Employee','M',1200,'B005');
insert into staff values ('S111','Ahmad','Elahi','Manager','M',2000,'B006');
insert into staff values ('S112','Hafsa','Amin','Employee','F',1200,'B006');
insert into staff values ('S113','Arman','Aiman','Manager','M',2000,'B007');
insert into staff values ('S114','Anisha','Azmi','Employee','F',1800,'B007');
insert into staff values ('S115','Mohammad','Najib','Employee','M',1200,'B007');
insert into staff values ('S116','Sufiya','Azmi','Manager','F',2000,'B008');
insert into staff values ('S117','Ruqaiya','Khatun','Manager','F',2000,'B009');
insert into staff values ('S118','Mohammad','Imran','Manager','M',2000,'B010');
insert into staff values ('S119','Sheikh','Rifat','Employee','M',1800,'B010');
insert into staff values ('S120','Anu','Warid','Employee','M',1200,'B010');

CREATE TABLE payment
(
	paymentID  varchar(5) not null primary key,
	paymentType varchar(8) not null ,
	amount int,
	StudentID varchar(8) NOT NULL,
	branch_no varchar(5) not null,
	foreign key (StudentID) references student(StudentID),
	foreign key (branch_no) references branch(branch_no)
);

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
Create table lesson 
(
    courseID varchar(5) not null primary key,
	staffID varchar(5) not null,
	StudentID varchar(8) NOT NULL,
	foreign key (staffID) references staff(staffID),
	foreign key (StudentID) references student(StudentID)
);
create table tournament 
(
    tournamentID varchar(5) not null,
	tournamentName varchar (20) not null,
	Entry_Fee int not null,
	StudentID varchar(8) NOT NULL,
	foreign key (StudentID) references student(StudentID)
);
SELECT fname, lname, position FROM staff
WHERE branch_no='B001';
select * from staff;
Create table lesson 
(
    courseID varchar(5) not null,
	staffID varchar(5) not null,
	StudentID varchar(8) NOT NULL,
	foreign key (staffID) references staff(staffID),
	foreign key (StudentID) references student(StudentID)
);
select*from staff;

insert into lesson values('C201',501,'S101');
insert into lesson values('C201',502,'S101');
insert into lesson values('C201',503,'S102');
insert into lesson values('C202',504,'S102');
insert into lesson values('C202',505,'S103');
insert into lesson values('C202',506,'S103');
insert into lesson values('C203',507,'S104');
insert into lesson values('C203',508,'S104');
insert into lesson values('C203',509,'S105');
insert into lesson values('C204',510,'S105');
insert into lesson values('C204',511,'S106');
insert into lesson values('C204',512,'S106');
insert into lesson values('C205',513,'S107');
insert into lesson values('C205',514,'S107');
insert into lesson values('C205',515,'S108');
insert into lesson values('C206',516,'S108');
insert into lesson values('C206',517,'S109');
insert into lesson values('C206',518,'S109');
insert into lesson values('C207',519,'S110');
insert into lesson values('C207',520,'S110');
insert into lesson values('C207',521,'S111');
insert into lesson values('C208',522,'S111');
insert into lesson values('C208',523,'S112');
insert into lesson values('C208',524,'S112');
insert into lesson values('C209',525,'S113');
insert into lesson values('C209',526,'S113');
insert into lesson values('C209',527,'S114');
insert into lesson values('C210',528,'S114');
insert into lesson values('C210',529,'S115');
insert into lesson values('C210',530,'S115');

Create table lesson 
(
    courseID varchar(5) not null,
	StudentID varchar(8) NOT NULL,
	staffID varchar(5) not null,
	foreign key (StudentID) references student(StudentID),
	foreign key (staffID) references staff(staffID),
);

select* from staff;

insert into student values(501,'Amin','M',29,'Kuala Lumpur','B001','S101');
insert into student values(502,'Amin','M',38,'Johor Bahru','B001','S101');
insert into student values(503,'Amin','M',47,'Shah Alam','B001','S102');
insert into student values(504,'Amin','M',56,'Rawang','B001','S103');
insert into student values(505,'Amin','M',65,'Kuala Lumpur','B002','S104');
insert into student values(506,'Amin','M',74,'Ampang','B002','S104');
insert into student values(507,'Amin','M',83,'Putrajaya','B003','S106');
insert into student values(508,'Amin','M',22,'Johor Bahru','B004','S107');
insert into student values(509,'Amin','M',31,'Rawang','B005','S109');
insert into student values(510,'Amin','M',40,'Kuala Lumpur','B005','S109');
insert into student values(511,'Amin','M',59,'Shah Alam','B006','S111');
insert into student values(512,'Amin','M',68,'Rawang','B007','S113');
insert into student values(513,'Amin','M',77,'Johor Bahru','B007','S114');
insert into student values(514,'Amin','M',86,'Rawang','B008','S116');
insert into student values(515,'Amin','M',25,'Kuala Lumpur','B009','S117');
insert into student values(516,'Amin','M',34,'Rawang','B010','S118');
insert into student values(517,'Amin','M',43,'Mlacca City','B010','S118');
insert into student values(518,'Amin','M',52,'Rawang','B002','S104');
insert into student values(519,'Amin','M',61,'Johor Bahru','B003','S106');
insert into student values(520,'Amin','M',70,'Kuala Lumpur','B003','S106');
insert into student values(521,'Amin','M',89,'Rawang','B007','S114');
insert into student values(522,'Amin','M',28,'Johor Bahru','B001','S101');
insert into student values(523,'Amin','M',37,'Shah Alam','B001','S102');
insert into student values(524,'Amin','M',46,'Malacca City','B001','S103');
insert into student values(525,'Amin','M',55,'Kuala Lumpur','B010','S119');
insert into student values(526,'Amin','M',64,'Rawang','B010','S120');
insert into student values(527,'Amin','M',73,'Subang Jaya','B005','S109');
insert into student values(528,'Amin','M',82,'Shah Alam','B007','S113');
insert into student values(529,'Amin','M',21,'Johor Bahru','B004','S107');
insert into student values(530,'Amin','M',50,'Klang','B004','S107');

select * from Student;

Delete from Student
Where StudentID = 530;


insert into lesson values('C201',501,'S101');
insert into lesson values('C201',502,'S101');
insert into lesson values('C201',503,'S102');
insert into lesson values('C202',504,'S102');
insert into lesson values('C202',505,'S103');
insert into lesson values('C202',506,'S103');
insert into lesson values('C203',507,'S104');
insert into lesson values('C203',508,'S104');
insert into lesson values('C203',509,'S105');
insert into lesson values('C204',510,'S105');
insert into lesson values('C204',511,'S106');
insert into lesson values('C204',512,'S106');
insert into lesson values('C205',513,'S107');
insert into lesson values('C205',514,'S107');
insert into lesson values('C205',515,'S108');
insert into lesson values('C206',516,'S108');
insert into lesson values('C206',517,'S109');
insert into lesson values('C206',518,'S109');
insert into lesson values('C207',519,'S110');
insert into lesson values('C207',520,'S110');
insert into lesson values('C207',521,'S111');
insert into lesson values('C208',522,'S111');
insert into lesson values('C208',523,'S112');
insert into lesson values('C208',524,'S112');
insert into lesson values('C209',525,'S113');
insert into lesson values('C209',526,'S113');
insert into lesson values('C209',527,'S114');
insert into lesson values('C210',528,'S114');
insert into lesson values('C210',529,'S115');
insert into lesson values('C210',530,'S115');

select * from lesson;

create table tournament 
(
    tournamentID varchar(5) not null,
	Entry_Fee int not null,
	StudentID varchar(8) NOT NULL,
	foreign key (StudentID) references student(StudentID)
);

insert into tournament values (222,100,501);
insert into tournament values (222,100,502);
insert into tournament values (208,120,503);
insert into tournament values (252,80,504);
insert into tournament values (276,70,505);
insert into tournament values (208,120,506);
insert into tournament values (222,100,507);
insert into tournament values (240,110,508);
insert into tournament values (252,80,509);
insert into tournament values (252,80,510);
insert into tournament values (222,100,511);
insert into tournament values (208,120,512);
insert into tournament values (240,110,513);
insert into tournament values (222,100,514);
insert into tournament values (222,100,515);
insert into tournament values (276,70,516);
insert into tournament values (208,120,517);
insert into tournament values (240,110,518);
insert into tournament values (276,70,519);
insert into tournament values (252,80,520);
insert into tournament values (252,80,521);
insert into tournament values (276,70,522);
insert into tournament values (276,70,523);
insert into tournament values (222,100,524);
insert into tournament values (208,120,525);
insert into tournament values (240,110,526);
insert into tournament values (252,80,527);
insert into tournament values (240,110,528);
insert into tournament values (240,110,529);
insert into tournament values (276,70,530);

select*from tournament;

insert into payment values ('P001','cash',500,501,'B001');
insert into payment values ('P002','cash',800,502,'B007');
insert into payment values ('P003','cash',720,503,'B010');
insert into payment values ('P004','paypal',580,504,'B004');
insert into payment values ('P005','cash',370,505,'B005');
insert into payment values ('P006','visa',220,506,'B003');
insert into payment values ('P007','mastercard',300,507,'B006');
insert into payment values ('P008','mastercard',610,508,'B009');
insert into payment values ('P009','paypal',280,509,'B002');
insert into payment values ('P010','paypal',280,510,'B010');
insert into payment values ('P011','cash',190,511,'B006');
insert into payment values ('P012','americanexpress',400,512,'B009');
insert into payment values ('P013','americanexpress',610,513,'B006');
insert into payment values ('P014','cash',700,514,'B008');
insert into payment values ('P015','visa',400,515,'B005');
insert into payment values ('P016','visa',370,516,'B004');
insert into payment values ('P017','americanexpress',320,517,'B004');
insert into payment values ('P018','paypal',410,518,'B010');
insert into payment values ('P019','cash',670,519,'B003');
insert into payment values ('P020','mastercard',480,520,'B001');
insert into payment values ('P021','mastercard',480,521,'B008');
insert into payment values ('P022','paypal',570,522,'B008');
insert into payment values ('P023','visa',600,523,'B007');
insert into payment values ('P024','paypal',300,524,'B010');
insert into payment values ('P025','cash',220,525,'B006');
insert into payment values ('P026','cash',110,526,'B005');
insert into payment values ('P027','mastercard',380,527,'B009');
insert into payment values ('P028','visa',400,528,'B002');
insert into payment values ('P029','cash',300,529,'B002');
insert into payment values ('P030','visa',270,530,'B003');

select * from payment;

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

insert into student values(501,'Amin','M',19,'Kuala Lumpur','B001','S101');
insert into student values(502,'Amir','M',18,'Johor Bahru','B001','S101');
insert into student values(503,'Irfan','M',17,'Shah Alam','B001','S102');
insert into student values(504,'Asma','F',16,'Rawang','B001','S103');
insert into student values(505,'Halima','F',25,'Kuala Lumpur','B002','S104');
insert into student values(506,'Asad','M',24,'Ampang','B002','S104');
insert into student values(507,'Abdul','M',23,'Putrajaya','B003','S106');
insert into student values(508,'Hafsa','F',22,'Johor Bahru','B004','S107');
insert into student values(509,'Amina','F',21,'Rawang','B005','S109');
insert into student values(510,'Ashfaq','M',20,'Kuala Lumpur','B005','S109');
insert into student values(511,'Arman','M',19,'Shah Alam','B006','S111');
insert into student values(512,'Hashim','M',18,'Rawang','B007','S113');
insert into student values(513,'Roni','M',17,'Johor Bahru','B007','S114');
insert into student values(514,'Shahida','F',16,'Rawang','B008','S116');
insert into student values(515,'Shamsur','M',25,'Kuala Lumpur','B009','S117');
insert into student values(516,'Rifath','M',14,'Rawang','B010','S118');
insert into student values(517,'Riaz','M',23,'Mlacca City','B010','S118');
insert into student values(518,'Biku','M',22,'Rawang','B002','S104');
insert into student values(519,'Nafi','M',21,'Johor Bahru','B003','S106');
insert into student values(520,'Warid','M',20,'Kuala Lumpur','B003','S106');
insert into student values(521,'Faisal','M',18,'Rawang','B007','S114');
insert into student values(522,'Mohammad','M',21,'Johor Bahru','B001','S101');
insert into student values(523,'Khan','M',19,'Shah Alam','B001','S102');
insert into student values(524,'Azmi','F',18,'Malacca City','B001','S103');
insert into student values(525,'Ruqaiya','F',16,'Kuala Lumpur','B010','S119');
insert into student values(526,'Ahmad','M',21,'Rawang','B010','S120');
insert into student values(527,'Amrin','F',21,'Subang Jaya','B005','S109');
insert into student values(528,'Abdullah','M',20,'Shah Alam','B007','S113');
insert into student values(529,'Ahad','M',21,'Johor Bahru','B004','S107');
insert into student values(530,'Amin','M',22,'Klang','B004','S107');


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

create view Topmanager(branch_no, Staff_salary, student_pay)
As Select s.branch_no, SUM(s.salary), SUM(p.amount)
from staff s, payment p
Where s.branch_no=p.branch_no
Group by s.branch_no;


select* from Topmanager;

create view Visitors
AS SELECT tournamentID, MAX(Entry_Fee) as Entry_Fee
From tournament
Group by tournamentID;

select* from Visitors;

create view Courses
AS SELECT courseID, COUNT(StudentID) As Total_Student, COUNT(staffID) As Total_staff
From lesson
Group By courseID;

select* from branch;

Update staff 
Set salary=1400
Where staffID='S102';

select staffId,position,salary
from staff;

select staffId,fname,lname,salary/30 As Wage_perDAY
from staff;

Select Count(Distinct tournamentID) As NumTournament
from tournament
where Entry_Fee > 100;

select COUNT(staffID) As Total_staff, SUM(salary) As Total_salary
from staff
where position='Manager';

Select MIN(salary) As Min_Salary, MAX(salary) As Max_Salary, AVG(salary) As Avrg_Salary
From staff;

select paymentID,paymentType,amount
from payment
Order by amount DESC; 

select * from Student
where city IN ('Kuala Lumpur','Johor Bahru')
Order by StudentID DESC;

select s.studentID, name, age, amount
from Student s, payment p
Where s.StudentID = p.StudentID;

select s.staffID, fname, lname, sex, COUNT(*) As Total_Course
from Staff s, lesson l
Where s.staffID = l.staffID
Group by s.staffID, fname, lname, sex;

select b.branch_no,city,zipcode, SUM(salary)As Given_salary
from branch b, staff s
where b.branch_no=s.branch_no
Group by b.branch_no,city,zipcode
Order by b.branch_no DESC;

select b.branch_no,city,zipcode, SUM(amount)As Earn_amount
from branch b, payment p
where b.branch_no=p.branch_no
Group by b.branch_no,city,zipcode
Order by b.branch_no ASC;

select staffID, fname, lname, sex, salary
from staff
where salary > some (select salary 
                    from staff
					Where branch_no='B004');



 