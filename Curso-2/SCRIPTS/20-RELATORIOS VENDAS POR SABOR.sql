
SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [NOTAS FISCAIS];
SELECT * FROM [ITENS NOTAS FISCAIS];

SELECT TP.SABOR FROM [TABELA DE PRODUTOS] TP;

SELECT NF.DATA FROM [NOTAS FISCAIS] NF;

SELECT INF.QUANTIDADE * INF.PRE�O AS FATURAMENTO FROM [ITENS NOTAS FISCAIS] INF;

SELECT TP.SABOR, YEAR(NF.DATA) AS ANO, SUM(INF.QUANTIDADE * INF.PRE�O) AS FATURAMENTO
FROM [ITENS NOTAS FISCAIS] INF 
INNER JOIN [TABELA DE PRODUTOS] TP ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA);

SELECT YEAR(NF.DATA) AS ANO, SUM(INF.QUANTIDADE * INF.PRE�O) AS FATURAMENTO
FROM [ITENS NOTAS FISCAIS] INF 
INNER JOIN [TABELA DE PRODUTOS] TP ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY YEAR(NF.DATA);

SELECT AUX1.SABOR, AUX1.ANO, CONVERT(DECIMAL(15,2), AUX1.FATURAMENTO), CONCAT(CONVERT(VARCHAR, ROUND((AUX1.FATURAMENTO / AUX2.TOTAL * 100), 2)), '%') AS [PERCENTUAL DE PARTICIPA��O] FROM
(SELECT TP.SABOR, YEAR(NF.DATA) AS ANO, SUM(INF.QUANTIDADE * INF.PRE�O) AS FATURAMENTO
FROM [ITENS NOTAS FISCAIS] INF 
INNER JOIN [TABELA DE PRODUTOS] TP ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY TP.SABOR, YEAR(NF.DATA)) AUX1
INNER JOIN
(SELECT YEAR(NF.DATA) AS ANO, SUM(INF.QUANTIDADE * INF.PRE�O) AS TOTAL
FROM [ITENS NOTAS FISCAIS] INF 
INNER JOIN [TABELA DE PRODUTOS] TP ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY YEAR(NF.DATA)) AUX2
ON AUX1.ANO = AUX2.ANO
ORDER BY AUX1.FATURAMENTO DESC;

--EXERCICIO
SELECT * FROM [TABELA DE PRODUTOS];
SELECT * FROM [NOTAS FISCAIS];
SELECT * FROM [ITENS NOTAS FISCAIS];

SELECT CONSULTA1.TAMANHO, CONSULTA1.ANO, CONCAT(CONVERT(VARCHAR, ROUND(SUM(CONSULTA1.FATURAMENTO / CONSULTA2.FATURAMENTO * 100),2)), '%') AS [PARTICIPA��O TOTAL]
FROM
(SELECT TP.TAMANHO, YEAR(NF.DATA) AS ANO, SUM(INF.PRE�O * INF.QUANTIDADE) AS FATURAMENTO
FROM [TABELA DE PRODUTOS] TP
INNER JOIN [ITENS NOTAS FISCAIS] INF ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY TP.TAMANHO, YEAR(NF.DATA)) CONSULTA1
INNER JOIN
(SELECT YEAR(NF.DATA) AS ANO, SUM(INF.PRE�O * INF.QUANTIDADE) AS FATURAMENTO
FROM [TABELA DE PRODUTOS] TP
INNER JOIN [ITENS NOTAS FISCAIS] INF ON INF.[CODIGO DO PRODUTO] = TP.[CODIGO DO PRODUTO]
INNER JOIN [NOTAS FISCAIS] NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(NF.DATA) = 2016
GROUP BY YEAR(NF.DATA)) CONSULTA2
ON CONSULTA1.ANO = CONSULTA2.ANO
GROUP BY CONSULTA1.TAMANHO, CONSULTA1.ANO
ORDER BY SUM(CONSULTA1.FATURAMENTO / CONSULTA2.FATURAMENTO * 100) DESC;