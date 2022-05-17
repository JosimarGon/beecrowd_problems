SELECT *
FROM(
     SELECT 
     	clients.name as  name
     	,clients.investment as investment
     	,operations.month as  month
     	,SUM(operations.profit) OVER (PARTITION BY operations.client_id 
                                      ORDER BY operations.client_id, operations.month) - clients.investment
                                      AS return
     FROM operations
     JOIN clients
     ON clients.id = operations.client_id
     ORDER BY name)
      AS t1
      WHERE return >= 0
      	AND return IN (SELECT min(return)
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
