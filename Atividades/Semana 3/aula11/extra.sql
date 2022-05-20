select customer_id, sum(amount) 
from payment 
where customer_id between 1 and 10
group by customer_id 
having sum(amount) > 120;