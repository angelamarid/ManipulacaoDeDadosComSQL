/*para alterar ou excluir registros na tabela preciso colocar a condição where, mas ela não é obrigatória. 
Posso usar update e delete sem usar where. Porém tome muito cuidado. Ao fazer isso a alteração vai ser 
feita em toda a tabela.*/


USE [VENDAS SUCOS]
GO

/****** Object:  Table [dbo].[PRODUTOS]    Script Date: 03/05/2018 15:16:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PRODUTOS_2](
	[CÓDIGO] [varchar](10) NOT NULL,
	[DESCRITOR] [varchar](100) NULL,
	[SABOR] [varchar](50) NULL,
	[TAMANHO] [varchar](50) NULL,
	[EMBALAGEM] [varchar](50) NULL,
	[PREÇO LISTA] [float] NULL,
 CONSTRAINT [PK_PRODUTOS_2] PRIMARY KEY CLUSTERED 
(
	[CÓDIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



INSERT INTO PRODUTOS_2
SELECT * FROM PRODUTOS

SELECT * FROM PRODUTOS_2

UPDATE PRODUTOS_2 SET [PREÇO LISTA] = [PREÇO LISTA] * 1.10  /*Se eu não colocar o where, vai funcionar, 
mas ele vai fazer a alteração em toda a tabela.*/

DELETE FROM PRODUTOS_2 /*EXCLUI TODOS os registros da tabela, pois não coloquei o where*/








