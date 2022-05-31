# Quais são os pagamentos mais caros?
select max(amount) from payment;
# Quais são os clientes inativos?
select * from customer where active = 0;
# Quais são as cidades cadastradas daqui do Brasil?
select city from city where country_id = 15;
# Quais são as cidades cadastradas que fazem parte da América Latina?
select city from city where country_id in (6,14,15,22,24,60,74,104);
# Quais são os aluguéis feitos pelo funcionário ‘Mike Hillyer'?
select inventory_id from rental where staff_id = 2;
# Quais são os filmes em que o ator ‘John Suvari’ participou?
select film_id from film_actor where actor_id = (SELECT actor_id FROM sakila.actor where first_name like 'John');
# Quais são os filmes em que um ator chamado ‘Rip’ participou?”
select film_id from film_actor where actor_id in (26,68);
