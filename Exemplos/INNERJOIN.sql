# Quais são as cidades cadastradas daqui do Brasil?
select country_id from country where country like 'BRAZIL';
select city from city where country_id = 15;

select cidade.city, pais.country from city cidade
INNER JOIN country pais 
ON pais.country_id = cidade.country_id  
where pais.country like 'BRAZIL';