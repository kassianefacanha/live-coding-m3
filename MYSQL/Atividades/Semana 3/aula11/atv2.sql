# Questão 1
SELECT customer_id, sum(amount),
CASE
    WHEN sum(amount) > 100 THEN 'Cliente Brabo'
    WHEN sum(amount) between 70 and 100 THEN 'Cliente bom'
    ELSE 'Cliente Eventual'
END AS Resultado
FROM payment
group by customer_id;
# Questão 2
SELECT actor_id, count(actor_id),
CASE
    WHEN count(actor_id) > 40 THEN 'Topa tudo'
	WHEN count(actor_id) between 30 and 40 THEN 'Altamente produtivo'
    WHEN count(actor_id) between 20 and 30 THEN 'Fez alguns filmes'
	WHEN count(actor_id) between 10 and 20 THEN 'Tem que fazer seu nome ainda'
    ELSE 'Nenhuma das alternativas'
END AS Resultado
FROM film_actor
group by actor_id;