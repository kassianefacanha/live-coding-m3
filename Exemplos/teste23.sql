SELECT a.address, a.district, c.customer_id
FROM address a
LEFT JOIN customer c
ON c.address_id = a.address_id
where c.customer_id is not null;


SELECT l.name, f.language_id, l.language_id
FROM language l 
LEFT JOIN film f
                on f.language_id = l.language_id
WHERE f.language_id is null;

SELECT f.actor_id, a.actor_id
FROM actor a 
LEFT JOIN film_actor f
                on f.actor_id = a.actor_id;