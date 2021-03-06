
SELECT * FROM [TABELA DE PRODUTOS];

-- Fazemos um teste em um ou mais campos e, dependendo do resultado, teremos um ou outro valor
SELECT [NOME DO PRODUTO],
	CASE 
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
	END
FROM [TABELA DE PRODUTOS];

SELECT [NOME DO PRODUTO],
	CASE 
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
	END AS [FAIXA DE PRE?O], AVG([PRE?O DE LISTA]) AS [VALOR M?DIO]
FROM [TABELA DE PRODUTOS] GROUP BY [NOME DO PRODUTO],
		CASE 
		WHEN [PRE?O DE LISTA] >= 12 THEN 'PRODUTO CARO'
		WHEN [PRE?O DE LISTA] >= 7 AND [PRE?O DE LISTA] < 12 THEN 'PRODUTO EM CONTA'
		ELSE 'PRODUTO BARATO'
	END;

--EXERCICIO
SELECT * FROM [TABELA DE CLIENTES];

SELECT NOME, [DATA DE NASCIMENTO],
	CASE
		WHEN YEAR([DATA DE NASCIMENTO]) < 1990 THEN 'ADULTO'
		WHEN YEAR([DATA DE NASCIMENTO]) BETWEEN 1990 AND 1995 THEN 'JOVEM'
		ELSE 'CRIAN?A'
	END AS [CLASSIFICA??O DE FAIXA ET?RIA]
FROM [TABELA DE CLIENTES];