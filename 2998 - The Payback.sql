/*
Uma empresa de investimentos deseja calcular o payback de seus clientes ao descobrir qual será o mês em que o acumulado das operações do empreendimento equivalem ou são superiores ao investimento inicial. Por exemplo, o cliente Lucas investiu 1000$ e apenas no terceiro mês obteve o seu payback, já que a soma de todas as suas operações foi superior ao seu investimento. Por outro lado, o cliente Daniel não conseguiu atingir seu payback já que seu investimento foi de 500$ e a soma de todas as suas operações foi 230$. Você precisa mostrar o nome do cliente, o investimento inicial, qual o mês do payback e o valor do retorno (valor acumulado - valor investimento inicial). Além disso, você deve mostrar o resultado ordenado do maior para o menor retorno. 
*/

SELECT *
FROM(
     SELECT 
     	clients.name AS  name
     	,clients.investment AS investment
     	,operations.month AS  month
     	,SUM(operations.profit) OVER (PARTITION BY operations.client_id 
                                      ORDER BY operations.client_id, operations.month) - clients.investment
                                      AS return
     FROM operations
     JOIN clients
     ON clients.id = operations.client_id
     ORDER BY name)
      AS t1
      WHERE RETURN >= 0
      	AND RETURN IN (SELECT min(return)
           			   FROM(SELECT * 
           				    FROM (
             					SELECT clients.name,
               						   SUM(operations.profit) OVER (PARTITION BY operations.client_id 
                                              ORDER BY operations.client_id, operations.month) - clients.investment
                                              AS return
              					FROM operations
              					JOIN clients
              					ON clients.id = operations.client_id)
              					AS t1
              					WHERE return >= 0) 
      		 AS t2
             GROUP by name)
