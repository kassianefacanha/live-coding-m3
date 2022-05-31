# Quais clientes começam com a letra P?
select first_name from customer where first_name like 'P%';
# Quais clientes se chamam Penelope, John, Maria ou Barbara?
select first_name from customer where first_name in ('Penelope', 'John', 'Maria', 'Barbara');
# Quais filmes começam com a letra C?
select * from film where title like 'C%';
# Quais filmes podem ser alugados por mais de 3 dias?
select * from film where rental_duration > 3;
# Quais foram os aluguéis do dia 27 de maio de 2005?
select * from rental where rental_date 
between '2005-05-25 00:00:00' 
and '2005-05-25 23:59:59';
# Quais foram os aluguéis entre os dia 26 e 29 de maio de 2005?
select * from rental where rental_date 
between '2005-05-26 00:00:00' 
and '2005-05-29 23:59:59';
