# REVISÃO GERAL

# Criação/Deleção Database
CREATE DATABASE TESTES;
DROP DATABASE TESTES;
# Criação/Deleção Table
CREATE TABLE TABLETESTE(
ID INT,
NOME TEXT
);
DROP TABLE TABLETESTE;
# CRUD
	# Inserção de registros - CREATE -> INSERT
    INSERT INTO TABLETESTE (ID, NOME)
    VALUES 
    (1, 'KASSIANE'),
    (2, 'KARINE'),
    (3, 'KAUANE'),
    (4, 'KALEB');
	# Mostrar registros - READ -> SELECT
    SELECT * FROM TABLETESTE;
	# Atualizar registros - UPDATE - > UPDATE
    UPDATE TABLETESTE 
    SET NOME = NULL
    WHERE ID = 2;
	# Deletar Registros - Delete -> Delete
    DELETE FROM TABLETESTE WHERE ID = 4;
# Filtragens
	# AND, OR , NOT, <>
    SELECT FIRST_NAME 
    FROM ACTOR
    WHERE  FIRST_NAME <> 'PENELOPE' 
    AND  FIRST_NAME <> 'NICK';
	# IN
	SELECT FIRST_NAME 
    FROM ACTOR
    WHERE  NOT FIRST_NAME IN ('PENELOPE','NICK', 'ED');
	# LIKE , DISTINCT
	SELECT DISTINCT FIRST_NAME 
    FROM ACTOR
    WHERE FIRST_NAME LIKE '_ENELOPE';
	# BETWEEN
	SELECT FIRST_NAME, ACTOR_ID
    FROM ACTOR
    WHERE ACTOR_ID between 20 AND 50;
	# LIMIT
	SELECT FIRST_NAME, ACTOR_ID
    FROM ACTOR
    WHERE ACTOR_ID between 20 AND 50
    LIMIT 3;
	# ORDER BY
	SELECT FIRST_NAME, ACTOR_ID
    FROM ACTOR
    WHERE ACTOR_ID between 20 AND 50
    ORDER BY ACTOR_ID DESC
    LIMIT 3;
	# MAX(), MIM()
    SELECT MAX(AMOUNT), MIN(AMOUNT)
    FROM PAYMENT;
	# COUNT(), SUM(), GROUP BY 
	SELECT customer_id, sum(AMOUNT), count(customer_id)
    FROM PAYMENT
    GROUP BY customer_id;
	# HAVING
	SELECT customer_id, sum(AMOUNT), count(customer_id)
    FROM PAYMENT
    GROUP BY customer_id
	HAVING SUM(AMOUNT) > 100;
	# CASE, WHEN, THEN, ELSE, END
	SELECT customer_id, sum(AMOUNT), count(customer_id),
    CASE
		WHEN SUM(AMOUNT) > 200 THEN 'CLIENTE BRABO'
        WHEN SUM(AMOUNT) > 150 THEN 'CLIENTE TOP'
        WHEN SUM(AMOUNT) > 120 THEN 'CLIENTE BOM'
        ELSE 'SÓ CLIENTE'
    END AS CLASSIFICACAO
    FROM PAYMENT
    GROUP BY customer_id
	HAVING SUM(AMOUNT) > 100;
# JOIN
	# INNER JOIN 
    SELECT a.nome tabelaa, b.nome tabelab
    FROM tabelaa a
    INNER JOIN tabelab b on a.nome = b.nome;
    
	# LEFT JOIN 
	SELECT a.nome tabelaa, b.nome tabelab
    FROM tabelaa a
	left JOIN tabelab b on a.nome = b.nome
    where b.nome is null;
	# RIGHT JOIN 
	SELECT a.nome tabelaa, b.nome tabelab
    FROM tabelaa a
	right JOIN tabelab b on a.nome = b.nome
    where a.nome is null;
# SUBQUERYS
SELECT MAX(SOMA)
FROM (
	SELECT customer_id, sum(AMOUNT) AS SOMA, count(customer_id),
    CASE
		WHEN SUM(AMOUNT) > 200 THEN 'CLIENTE BRABO'
        WHEN SUM(AMOUNT) > 150 THEN 'CLIENTE TOP'
        WHEN SUM(AMOUNT) > 120 THEN 'CLIENTE BOM'
        ELSE 'SÓ CLIENTE'
    END AS CLASSIFICACAO
    FROM PAYMENT
    GROUP BY customer_id
	HAVING SUM(AMOUNT) > 100
)AS TABLENEW;

  



