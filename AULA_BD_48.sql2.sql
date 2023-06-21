#criaçao do banco de dados
create database empresa_xpto;

#ativaçao do banco de dados
use empresa_xpto;

#ciraçao de uma tabela
create table funcionarios (
  id int auto_increment,
  nome varchar(60),
  sobrenome varchar(60),
  salario decimal (10,2),
  primary key (ID)
  );
  
#carregar um arquivo '.csv' para uma tabela 
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/uploads/funcionarios.csv'
into table funcionarios 
fields terminated by ','
lines terminated by '\n'
ignore 1 lines 
(nome, sobrenome, salario) set id =null;

#selecionar tudo da tabela "funcionarios"
select * from funcionarios; 

#selecionar todos os salarios da empresa <1238.11
select * from funcionarios where salario<1238.11;

#selecionar funcionarios por nome,sobrenome com o salario com limite de 5 informaçoes apenas *
select nome, sobrenome from funcionarios order by salario limit 5;
 
#selecionar os nomes e sobrenome da tabela funcionarios ordenado por salarios de forma decrescente , tendo o limite de 5 informaçoes
select nome, sobrenome from funcionarios order by salario desc limit 5;

#funcionarios com nome igual gil ou carlo
select *from funcionarios
where nome ="gil" or NOME = "carlo";


#SELECIONAR A TABELA FUNCIONARIOS AS INFORMAÇOES DE UM FUNCIONARIO ONDE O SEU NOME E IGUAL A "GIL" OU "CARLO" COM O SALARIO MAIOR QUE 15000.
select * FROM FUNCIONARIOS 
WHERE (NOME= 'GIL' OR NOME = 'CARLO') AND salario > 15000;


#SELECIONAR FUNCIONARIOS COM O NOME IGUAL A "BENN" OU "RAMET"
SELECT * FROM funcionarios
WHERE sobrenome = 'Benn' OR sobrenome = 'Ramet'; 


#SELECIONAR A TABELA FUNCIONARIOS COM INFORMAÇOES DE UM FUNCIONARIO ONDE O SEU NOME E IGUAL A "BENN" OU "RAMET" COM O SALARIO MENOR QUE 5000
SELECT * FROM funcionarios
WHERE (sobrenome = 'Benn' OR sobrenome = 'Ramet') AND salario < 5000;


#SELECIONAR FUNCIONARIOS COM O SALARIO ENTRE 5000 A 10.000
SELECT * FROM funcionarios
WHERE salario BETWEEN 5000 AND 10000;

#SELECIONAR NOME E SOBRENOME DOS FUNCIONARIOS COM O SALARIO ENTRE 2000 A 3000
SELECT nome, sobrenome FROM funcionarios
WHERE salario BETWEEN 2000 AND 3000;


#SOMAR A SOMA TOTAL DO SALARIO DOS FUNCIONARIOS DE UMA EMPRESA 
SELECT SUM(SALARIO)AS SOMA_SALARIOS
FROM FUNCIONARIOS;

#CONTAR A MEDIA SALARIAL DA EMPRESA 
SELECT AVG (SALARIO) AS MEDIA_SALARIOS 
FROM FUNCIONARIOS;

#CONTAR O TOTAL DE FUNCIONARIOS DE UMA EMPRESA 
SELECT COUNT(*) AS TOTAL_FUNCIONARIOS 
FROM FUNCIONARIOS;

#SELECIONAR O FUNCIONARIO COM O MAIOR SALARIO DESTA EMPRESA 
SELECT MAX(SALARIO) AS MAIOR_SALARIO
FROM FUNCIONARIOS ;

#SELECIONAR O FUNCIONARIO COM O MENOR SALARIO  DESTA EMPRESA
SELECT MIN(SALARIO) AS MAIOR_salario
from funcionarios;

#CONTAR OS FUNCIONARIOS COM O SALARIO >15000
select count(*) as total 
from funcionarios where salario>15000;

#CONTAR O TOTAL DE FUNCIONARIOS QUE TEM O SALARIO  ENTRE 1212 E 5000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 1212 AND 5000;


#SELECIONAR O TOTAL DE FUNCIONARIOS QUE RECEBEM UM SALARIO ENTRE 5001 E 10000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 5001 AND 10000; 

#SELECIONAR O TOTAL DE FUNCIONARIOS QUE RECEBEM UM SALARIO ENTRE 10001 E 15000
SELECT COUNT(*) AS TotalFuncionarios
FROM Funcionarios WHERE Salario BETWEEN 10001 AND 15000;

