create view Courses
AS SELECT courseID, COUNT(StudentID) As Total_Student, COUNT(staffID) As Total_staff
From lesson
Group By courseID;
