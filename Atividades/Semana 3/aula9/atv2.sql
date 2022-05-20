# Quais são as cidades dos clientes em ordem alfabética?
select city from city order by city asc;
# Quais são os primeiros nomes dos clientes em ordem alfabética?
select first_name from customer order by first_name asc;
# Qual é o valor de aluguel do filme mais caro?
select max(rental_rate) from film;
# Qual é o valor de aluguel do filme mais barato?
select min(rental_rate) from film;
# Qual é o menor tempo de aluguel permitido para um filme?
select min(length) from film;
# Qual é o maior tempo de aluguel permitido para um filme?
select max(length) from film;
# Qual é a reposição mais cara?
select max(replacement_cost) from film;
# Qual é a reposição mais barata?
select min(replacement_cost) from film;
