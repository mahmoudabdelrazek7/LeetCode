select product_id
from Products
where UPPER(low_fats) ='Y' And UPPER(recyclable) = 'Y';
