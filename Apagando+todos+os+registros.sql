/*para alterar ou excluir registros na tabela preciso colocar a condi��o where, mas ela n�o � obrigat�ria. 
Posso usar update e delete sem usar where. Por�m tome muito cuidado. Ao fazer isso a altera��o vai ser 
feita em toda a tabela.*/


USE [VENDAS SUCOS]
GO

/****** Object:  Table [dbo].[PRODUTOS]    Script Date: 03/05/2018 15:16:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUTOS_2](
	[C�DIGO] [varchar](10) NOT NULL,
	[DESCRITOR] [varchar](100) NULL,
	[SABOR] [varchar](50) NULL,
	[TAMANHO] [varchar](50) NULL,
	[EMBALAGEM] [varchar](50) NULL,
	[PRE�O LISTA] [float] NULL,
 CONSTRAINT [PK_PRODUTOS_2] PRIMARY KEY CLUSTERED 
(
	[C�DIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



INSERT INTO PRODUTOS_2
SELECT * FROM PRODUTOS

SELECT * FROM PRODUTOS_2

UPDATE PRODUTOS_2 SET [PRE�O LISTA] = [PRE�O LISTA] * 1.10  /*Se eu n�o colocar o where, vai funcionar, 
mas ele vai fazer a altera��o em toda a tabela.*/

DELETE FROM PRODUTOS_2 /*EXCLUI TODOS os registros da tabela, pois n�o coloquei o where*/








