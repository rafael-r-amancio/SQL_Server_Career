
ALTER TABLE [TABELA DE CLIENTES] ALTER COLUMN [CPF] NVARCHAR(11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES] ADD CONSTRAINT PK_CLIENTES PRIMARY KEY CLUSTERED ([CPF]);

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME COMPLETO]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('39482985674'
           ,'João da Silva'
           ,'Rua Projetada A número 10'
           ,''
           ,'Centro'
           ,'Rio de Janeiro'
           ,'RJ'
           ,'20000000'
           ,'1990-10-25'
           ,30
           ,'M'
           ,120000.50
           ,1000
           ,1);