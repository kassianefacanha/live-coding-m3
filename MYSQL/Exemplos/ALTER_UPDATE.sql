alter table alunos add EMAIL varchar(255);
alter table alunos drop EMAIL ;
select * from alunos;
update alunos set NOME = 'kassiane' where ID = 1