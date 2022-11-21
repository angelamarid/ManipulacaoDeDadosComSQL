/*N�s podemos tamb�m fazer uma altera��o de dados de uma tabela usando como refer�ncia 
outra tabela existente.*/

SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1000889'

SELECT * FROM [PRODUTOS] WHERE [C�DIGO] = '1000889'

/*ALTERA��O DO PRE�O*/
UPDATE [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] SET [PRE�O DE LISTA] = 7
WHERE [CODIGO DO PRODUTO] = '1000889'

/*B � a tabela origem e A tabela fonte*/
SELECT B.[CODIGO DO PRODUTO], B.[PRE�O DE LISTA], A.[C�DIGO], A.[PRE�O LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[C�DIGO] = B.[CODIGO DO PRODUTO]
WHERE A.[C�DIGO] = '1000889'

/*mudan�a de pre�o da tabela A com base no valor da tabela B origem*/
UPDATE A SET A.[PRE�O LISTA] = B.[PRE�O DE LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[C�DIGO] = B.[CODIGO DO PRODUTO]
WHERE A.[C�DIGO] = '1000889'

/*Podemos observar que os vendedores possuem bairros associados a eles. Vamos aumentar 
em 30% o volume de compra dos clientes que possuem, em seus endere�os, bairros onde os 
vendedores possuam escrit�rios.*/

select * from [dbo].[Vendedores]
select * from [dbo].[CLIENTES]

UPDATE A SET A.[VOLUME DE COMPRA] = A.[VOLUME DE COMPRA]* 1.3
FROM [dbo].[CLIENTES] A
INNER JOIN [SUCOS_VENDAS].[dbo].[TABELA DE CLIENTES] B
ON A.[BAIRRO] = B.[BAIRRO]


UPDATE [dbo].[CLIENTES] SET [dbo].[CLIENTES].[VOLUME DE COMPRA] = 
    [dbo].[CLIENTES].[VOLUME DE COMPRA] * 1.30
FROM [dbo].[CLIENTES]  
INNER JOIN [dbo].[VENDEDORES] 
ON [dbo].[CLIENTES].[BAIRRO] = [dbo].[VENDEDORES].[BAIRRO]