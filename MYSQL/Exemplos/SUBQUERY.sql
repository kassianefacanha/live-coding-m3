SELECT customer_id, max(soma) 
FROM(SELECT customer_id, sum(amount) as soma
from payment
group by customer_id) as subquery;

