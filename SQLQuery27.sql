USE [VENDAS SUCOS]
GO

/****** Object:  Table [dbo].[Vendedores]    Script Date: 06/11/2022 19:05:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[VENDEDORES2](
	[MATRICULA] [varchar](50) NOT NULL,
	[NOME] [varchar](50) NULL,
	[COMISS�O] [float](50) NULL,
	[DATA ADMISS�O] [varchar](50) NULL,
	[F�RIAS] [varchar](50) NULL,
	[BAIRRO] [varchar](50) NULL
) ON [PRIMARY]
GO


