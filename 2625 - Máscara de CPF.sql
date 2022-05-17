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
