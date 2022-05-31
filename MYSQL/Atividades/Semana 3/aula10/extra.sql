# Quantas cópias existem de cada filme nas lojas?
select distinct film_id, count(film_id) from inventory group by film_id;
# Quantas cópias de cada filme existem no inventário na loja 1?
select distinct film_id, count(film_id) from inventory  where store_id = 1 group by film_id;
# Quantos discos existem no inventário da loja 1?
select count(film_id) from inventory where store_id = 1;
