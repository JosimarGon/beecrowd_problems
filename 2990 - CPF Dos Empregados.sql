/*
Mostrar o CPF, nome dos empregados e o nome do departamento dos empregados que não trabalham em nenhum projeto. O resultado deve estar ordenado por cpf 
*/


SELECT 
	empregados.cpf
	,empregados.enome
	,departamentos.dnome
FROM empregados  
INNER JOIN departamentos          
ON empregados.dnumero = departamentos.dnumero
WHERE empregados.cpf_supervisor IS NULL
ORDER BY empregados.cpf ASC; 
