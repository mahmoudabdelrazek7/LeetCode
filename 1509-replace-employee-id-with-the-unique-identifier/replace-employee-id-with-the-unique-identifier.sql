select emp.name, empuni.unique_id
from employees As emp
left join employeeuni AS empuni
on emp.id = empuni.id;
