SELECT 
	loan.name
	,CAST(EXTRACT(day FROM loan.payday)AS INT) AS day
 FROM loan;
