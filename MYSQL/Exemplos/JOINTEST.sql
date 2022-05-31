select a.nome nome_tableA, b.nome nome_tableB
from tabelaa a 
inner join tabelab b on a.nome = b.nome;

select a.nome nome_tableA, b.nome nome_tableB
from tabelaa a 
LEFT join tabelab b on a.nome = b.nome
WHERE b.nome is null ;