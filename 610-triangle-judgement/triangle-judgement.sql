/* Write your T-SQL query statement below */
select *,
case 
when x+y>z AND x+z>y AND z+y>x 
then 'Yes'
else 'No'
END as Triangle
from Triangle