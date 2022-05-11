SELECT * FROM cachorros 
WHERE NOME_DONO like 'KASSIANE';

ALTER TABLE CACHORROS
ADD idade int;

ALTER TABLE CACHORROS
ADD code_countries int;

ALTER TABLE CACHORROS
DROP IDADE3;

ALTER TABLE CACHORROS 
ADD foreign key (code_countries)
REFERENCES countries (code);

UPDATE CACHORROS
SET IDADE = 20
WHERE ID = 1;


UPDATE CACHORROS
SET IDADE = 10;

# insert into cachorros (id, idade) values (11,2)
