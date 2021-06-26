
SELECT * FROM CLIENTES;
SELECT * FROM CLIENTES WHERE CPF = '19290992743';
UPDATE CLIENTES SET ENDERE�O = 'R. Jorge Emilio 23', BAIRRO = 'Santo Amaro', CIDADE = 'S�o Paulo', ESTADO = 'SP', CEP = '8833223' WHERE CPF = '19290992743';
------------------------------------------------------------------------------
UPDATE CLIENTES SET [VOLUME COMPRA] = [VOLUME COMPRA] * 1.2 WHERE ESTADO = 'RJ';

------------------------------------------------------------------------------
SELECT * FROM [dbo].[CLIENTES]
SELECT * FROM[dbo].VENDEDORES;

SELECT A.CPF, A.[VOLUME COMPRA] FROM [dbo].[CLIENTES] A
INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]

UPDATE A SET A.[VOLUME COMPRA] = A.[VOLUME COMPRA] * 1.30
FROM [dbo].[CLIENTES] A
INNER JOIN [dbo].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO];
------------------------------------------------------------------------------
SELECT * FROM CLIENTES;

MERGE INTO [CLIENTES] AS A 
USING [VENDEDORES] AS B
ON A.BAIRRO = B.BAIRRO
WHEN MATCHED THEN
UPDATE SET A.[VOLUME COMPRA] = A.[VOLUME COMPRA] * 1.30;
------------------------------------------------------------------------------
SELECT A.N�MERO FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON A.[CPF] = B.[CPF] 
WHERE B.[IDADE] < 18;

DELETE A FROM [NOTAS] A
INNER JOIN [CLIENTES] B ON B.CPF = A.CPF
WHERE B.IDADE < 18;
------------------------------------------------------------------------------
CREATE TRIGGER TG_CLIENTES_IDADE
ON [CLIENTES]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
UPDATE [CLIENTES] SET [IDADE] = 
    DATEDIFF(YEAR, [DATA NASCIMENTO], GETDATE());
END;