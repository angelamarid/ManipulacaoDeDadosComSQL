
	 SELECT * from [PRODUTOS] WHERE SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'

	 DELETE FROM [PRODUTOS] WHERE [CÓDIGO] = '1001000' /* Apagando um registro*/

	 SELECT * FROM [PRODUTOS]  WHERE [TAMANHO] = '1 Litro'
	  AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'

	 DELETE FROM [PRODUTOS] WHERE [TAMANHO] = '1 Litro' 
	 AND SUBSTRING([DESCRITOR],1,15) = 'Sabor dos Alpes'/*apagando um grupo*/

	 SELECT [CODIGO DO PRODUTO] FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]

	 SELECT * FROM [PRODUTOS] 
	 WHERE [CÓDIGO] 
	 NOT IN (SELECT [CODIGO DO PRODUTO] 
	 FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]) /* vou listar todo mundo dentro da tabela de 
	 produtos, mas que não existe na tabela fonte.*/

	 DELETE FROM [PRODUTOS] 
	 WHERE [CÓDIGO] 
	 NOT IN (SELECT [CODIGO DO PRODUTO] 
	 FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS])


/*Exclua as notas fiscais (apenas o cabeçalho) cujos clientes tenham menos que 18 anos.*/
SELECT * FROM [dbo].[Notas]
SELECT * FROM [dbo].[CLIENTES]

SELECT  N.[NUMERO], C.NOME, C.IDADE FROM [dbo].[Notas] N
INNER JOIN [dbo].[CLIENTES] C
ON N.CPF = C.CPF
WHERE C.IDADE> 18 

DELETE N FROM [dbo].[Notas] N
INNER JOIN [dbo].[CLIENTES] C
ON N.CPF = C.CPF
WHERE C.IDADE> 18 

SELECT  N.[NUMERO], C.NOME, C.IDADE FROM [dbo].[Notas] N
INNER JOIN [dbo].[CLIENTES] C
ON N.CPF = C.CPF
WHERE C.IDADE> 18 


