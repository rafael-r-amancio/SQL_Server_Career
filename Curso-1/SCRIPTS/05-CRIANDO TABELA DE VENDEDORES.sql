USE [SUCOS_VENDAS]
GO

/****** Object:  Table [dbo].[TABELA DE VENDEDORES]    Script Date: 29/04/2021 12:55:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TABELA DE VENDEDORES](
	[MATRICULA] [nvarchar](5) NULL,
	[NOME] [nvarchar](100) NULL,
	[PERCENTUAL COMISSAO] [float] NULL
) ON [PRIMARY]
GO

