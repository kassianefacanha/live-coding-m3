SELECT l.name, f.language_id, l.language_id
FROM language l 
LEFT JOIN film f
                on f.language_id = l.language_id
WHERE f.language_id is null;

SELECT 
FROM film f
LEFT JOIN language l
ON l.language_id <> f.language_id
limit 5;
