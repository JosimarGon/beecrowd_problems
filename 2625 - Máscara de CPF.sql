/*
Os diretores do setor de comunicação da sua empresa querem um relatório sobre os dados dos clientes físicos que estão cadastrados no banco de dados. Porem o antigo relatório teve um problema. Os dados do CPF dos clientes vieram sem a máscara.

Por isso seu trabalho agora é selecionar todos os CPFs de todos os clientes, e aplicar uma máscara sobre o retorno dos dados.

A máscara do CPF é parecida com: '000.000.000-00'.
*/


SELECT  
	regexp_replace(cpf, '(\d{3})(\d{3})(\d{3})', '\1.\2.\3-')
FROM natural_person;


/* 
 caso os registros do cpf tenha sido em erroneamente como 
 dado tipo inteiro e contenham 0 como primeiro digito bigint a solução abaixo 
 contorna esse problema
*/

SELECT 
	CAST(REPLACE(to_char(natural_person.cpf, '000:000:000-00'), ':', '.') as CHAR(15)) AS cpf
 FROM natural_person;
