
SELECT * FROM [SUCOS_VENDAS].dbo.[TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1000889'

SELECT * FROM [PRODUTOS] WHERE [C?DIGO] = '1000889'

UPDATE [SUCOS_VENDAS].dbo.[TABELA DE PRODUTOS] SET [PRE?O DE LISTA] = 7 WHERE [CODIGO DO PRODUTO] = '1000889'

SELECT B.[CODIGO DO PRODUTO], B.[PRE?O DE LISTA], A.[C?DIGO], A.[PRE?O LISTA] 
FROM [SUCOS_VENDAS].dbo.[TABELA DE PRODUTOS] AS B
INNER JOIN [PRODUTOS] AS A ON A.C?DIGO = B.[CODIGO DO PRODUTO]
WHERE A.C?DIGO = '1000889'

UPDATE A SET A.[PRE?O LISTA] = B.[PRE?O DE LISTA]
FROM [SUCOS_VENDAS].dbo.[TABELA DE PRODUTOS] AS B
INNER JOIN [PRODUTOS] AS A ON A.C?DIGO = B.[CODIGO DO PRODUTO]
WHERE A.C?DIGO = '1000889'