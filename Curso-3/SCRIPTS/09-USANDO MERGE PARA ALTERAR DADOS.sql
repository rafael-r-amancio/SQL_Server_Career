
SELECT * FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS] WHERE [CODIGO DO PRODUTO] = '1002334'

SELECT * FROM PRODUTOS WHERE [C�DIGO] = '1002334'

SELECT B.[CODIGO DO PRODUTO], B.[PRE�O DE LISTA], A.[C�DIGO], A.[PRE�O LISTA] 
FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS] B INNER JOIN PRODUTOS A ON A.C�DIGO = B.[CODIGO DO PRODUTO]
WHERE A.C�DIGO = '1002334'

UPDATE SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS] SET [PRE�O DE LISTA] = 8
WHERE [CODIGO DO PRODUTO] = '1002334'

-- MERGE NECESSITA DE PONNTO VIRGULA
MERGE INTO [PRODUTOS] A
USING SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS] B
ON A.C�DIGO = B.[CODIGO DO PRODUTO] AND A.[C�DIGO] = '1002334'
WHEN MATCHED THEN
UPDATE SET A.[PRE�O LISTA] = B.[PRE�O DE LISTA];