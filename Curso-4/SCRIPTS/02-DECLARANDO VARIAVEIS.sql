
DECLARE @MATRICULA VARCHAR(5), @NOME VARCHAR(100), @PERCENTUAL FLOAT, @DATA DATE, @FERIAS BIT, @BAIRRO VARCHAR(100)

SET @MATRICULA = '00240'
SET @NOME = 'Claudia Rodrigues'
SET @PERCENTUAL = 0.10
SET @DATA = '20100120'
SET @FERIAS = 1
SET @BAIRRO = 'Jardins'

INSERT INTO [TABELA DE VENDEDORES] (MATRICULA, NOME, [PERCENTUAL COMISS�O], [DATA ADMISS�O], [DE FERIAS], BAIRRO) VALUES (@MATRICULA, @NOME, @PERCENTUAL, @DATA, @FERIAS, @BAIRRO)

SELECT * FROM [TABELA DE VENDEDORES]