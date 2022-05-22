/*
O Banco Central de Financiamentos perdeu vários registros após uma falha no servidor que ocorreu no mês de Outubro. As datas de cobrança das parcelas foram perdidas. Porém uma cópia de segurança foi encontrada contendo as informações sobre as datas de pagamento das parcelas dos clientes.

Por tanto, o Banco pede a sua ajuda para selecionar os nomes e o dia do mês que cada cliente deve pagar sua parcela.

OBS: Obrigatoriamente o dia do mês precisa ser um inteiro.
*/

SELECT 
	loan.name
	,CAST(EXTRACT(day FROM loan.payday)AS INT) AS day
 FROM loan;
