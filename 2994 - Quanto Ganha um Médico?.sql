SELECT
	doctors.name
	,ROUND(SUM(attendances.hours * 150 +  
              ((attendances.hours * 150) * 
               (work_shifts.bonus / 100))), 1) AS salary
FROM (attendances
	INNER JOIN doctors 
	ON doctors.id = attendances.id_doctor) 
INNER JOIN work_shifts
ON attendances.id_work_shift = work_shifts.id
GROUP BY doctors.name
ORDER BY salary DESC;
