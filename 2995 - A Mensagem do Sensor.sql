/*
​Um sensor captura a temperatura do ambiente a cada minuto. Os registros também possuem um marcador, em que todas as vezes que a temperatura muda em relação a última captura esse marcador é incrementado. Quando o sensor armazena 15 registros ele prepara uma mensagem para enviá-la o computador central. Para reduzir o tamanho da mensagem o sensor compacta os registros próximos com a mesma temperatura e adiciona o número de registros que foram compactados. Construa uma consulta para resolver esse problema, mostrando a temperatura e o número de registros correspondente. 
*/

SELECT 
	temperature AS temperature 
	,COUNT (mark) AS number_of_records
FROM records
GROUP BY mark, temperature
ORDER by mark ASC;
