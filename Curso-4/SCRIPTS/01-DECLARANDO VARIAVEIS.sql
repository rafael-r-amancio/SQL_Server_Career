
-- DECLARE <NOME DA VARIAVEL> <TIPO DA VARIAVEL> 
-- NOME DEVE SER UNICO E COME�AR COM @
-- VALOR PODE SER ATRIBUIDO COM COM SET OU SELECT

DECLARE @IDADE INT
DECLARE @NOME NVARCHAR(200)
DECLARE @NASCIMENTO DATE

DECLARE @IDADE2 INT, @NOME2 NVARCHAR(200), @NASCIMENTO2 DATE

SET @IDADE = 20
--PRINT @IDADE

SET @NOME = 'JO�O DA SILVA'
--PRINT @NOME

SET @NASCIMENTO = '20210622'
--PRINT @NASCIMENTO

--SELECT * FROM [TABELA DE CLIENTES]

DECLARE @CPF NVARCHAR(12)
SET @CPF = '2600586709'

-- NOME DA VARIAVEL E DO CAMPO N�O PRECISAM SEREM IGUAIS
--SELECT [NOME], [DATA DE NASCIMENTO], [IDADE] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF

SELECT @NOME2 = NOME, @NASCIMENTO2 = [DATA DE NASCIMENTO], @IDADE2 = [IDADE] FROM [TABELA DE CLIENTES] WHERE CPF = @CPF

PRINT @NOME2
PRINT @NASCIMENTO2
PRINT @IDADE2