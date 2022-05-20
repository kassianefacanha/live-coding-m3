# Quais os países de cada cidade cadastrada?
SELECT country, city
FROM country
INNER JOIN city
ON country.country_id = city.country_id;

# Quais são as cidades cadastradas no Brasil e Argentina?
SELECT country, city
FROM country
INNER JOIN city
ON country.country_id = city.country_id
WHERE country.country = 'Brazil' or country.country = 'Argentina';

# Olhando para todos os atores cadastrados, qual o id de cada um dos 
# filmes que participaram?
SELECT film_id, last_name
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id;
# Quais são os títulos em que o ator ‘John Suvari’ participou?
SELECT title, first_name, last_name
FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film.film_id = film_actor.film_id
where actor.first_name = 'JOHN' and actor.last_name = 'SUVARI';
# Qual o idioma de todos os títulos cadastrados? (Título e idioma apenas)
SELECT language.name, title
from language
INNER JOIN film
ON film.language_id = language.language_id;

