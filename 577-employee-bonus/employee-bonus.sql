select e.name,
s.bonus
from employee e
left join bonus s
on e.empId = s.empId
where s.bonus<1000
or s.bonus is null