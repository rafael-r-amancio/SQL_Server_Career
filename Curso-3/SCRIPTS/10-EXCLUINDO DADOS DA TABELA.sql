
SELECT * from [PRODUTOS] WHERE SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes';

DELETE FROM PRODUTOS WHERE [C�DIGO] = '1001000';

-- APAGANDO EM CONJUNTO (ANTES DE APAGAR FA�A UM SELECT PARA GARANTIR)
SELECT * FROM PRODUTOS WHERE TAMANHO = '1 Litro' AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes';
DELETE FROM PRODUTOS WHERE TAMANHO = '1 Litro' AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes';

SELECT [CODIGO DO PRODUTO] FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS]
SELECT * FROM PRODUTOS WHERE [C�DIGO] NOT IN (SELECT [CODIGO DO PRODUTO] FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS])
DELETE FROM PRODUTOS WHERE [C�DIGO] NOT IN (SELECT [CODIGO DO PRODUTO] FROM SUCOS_VENDAS.dbo.[TABELA DE PRODUTOS])