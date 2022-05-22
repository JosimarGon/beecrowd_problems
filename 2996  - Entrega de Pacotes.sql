/*
Você trabalha em uma transportadora e precisa mostrar com urgência o ano e o nome de todos os clientes que enviaram e receberam pacotes azuis ou do ano de 2015 e também que o endereço do seu remetente ou destinatário não seja de Taiwan. Além disso, você deve ordenar o resultado pelo ano de maneira decrescente.
*/

SELECT 
	packages.year
	,us.name
    ,ur.name
 FROM packages
 JOIN users AS us 
 	ON us.id = packages.id_user_sender
 JOIN users AS ur 
 	ON ur.id = packages.id_user_receiver
 WHERE (LOWER(us.address) <> 'taiwan'
        	AND LOWER(ur.address) <> 'taiwan')
        	AND (LOWER(packages.color) = 'blue' 
            OR packages.year = 2015)
ORDER BY packages.year DESC;
