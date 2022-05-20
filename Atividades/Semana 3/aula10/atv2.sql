# Qual o ranking dos DVDs que foram mais alugados?
SELECT inventory_id, count(inventory_id) FROM rental group by inventory_id order by count(inventory_id) desc;
# Quantas vezes o filme com id = 1 na loja 1 foi alugado?
SELECT count(*) FROM rental WHERE rental.inventory_id in (1,2,3,4);
# Qual funcionário alugou mais filmes?
SELECT staff_id, count(1) FROM sakila.rental GROUP BY staff_id limit 1;
# Qual o faturamento do dia 27 de maio de 2005?
SELECT sum(amount) FROM payment where payment_date like '2005-05-27%'  ;
# Quanto cada funcionário faturou no dia 27 de maio de 2005?
SELECT staff_id, sum(amount) FROM payment where payment_date like '2005-05-27%' GROUP BY staff_id ;




