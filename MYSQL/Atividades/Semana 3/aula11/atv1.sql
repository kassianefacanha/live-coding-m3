# Quais atores atuaram em mais de 15 filmes?
select actor_id,count(film_id) 
from film_actor 
group by actor_id 
having count(film_id)>15;
# Quais clientes fizeram 29 pedidos?
select customer_id,count(inventory_id) 
from rental
group by customer_id
having count(customer_id)>29;
# Quais são os anos que possuem mais de 5 lançamentos dentro dos filmes da locadora?
select release_year,count(release_year) 
from film
group by release_year
having count(release_year)>5;
# Quais são os filmes que possuem 3 
# cópias ou menos na loja 1?
select film_id, count(film_id) 
from inventory
group by film_id
having count(film_id)>3;
# Numa nova campanha, o público alvo são os 
# clientes que gastaram entre 70 e 100 dólares. 
# Qual o id desses clientes?
select customer_id, sum(amount) 
from payment
group by customer_id
having sum(amount) between 70 and 100;
 
