SELECT 
	temperature AS temperature 
	,COUNT (mark) AS number_of_records
FROM records
GROUP BY mark, temperature
ORDER by mark ASC;
