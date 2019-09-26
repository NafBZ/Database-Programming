create view Topmanager(branch_no, Staff_salary, student_pay)
As Select s.branch_no, SUM(s.salary), SUM(p.amount)
from staff s, payment p
Where s.branch_no=p.branch_no
Group by s.branch_no;