/*Nós podemos também fazer uma alteração de dados de uma tabela usando como referência 
outra tabela existente.*/

SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1000889'

SELECT * FROM [PRODUTOS] WHERE [CÓDIGO] = '1000889'

/*ALTERAÇÃO DO PREÇO*/
UPDATE [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] SET [PREÇO DE LISTA] = 7
WHERE [CODIGO DO PRODUTO] = '1000889'

/*B é a tabela origem e A tabela fonte*/
SELECT B.[CODIGO DO PRODUTO], B.[PREÇO DE LISTA], A.[CÓDIGO], A.[PREÇO LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[CÓDIGO] = B.[CODIGO DO PRODUTO]
WHERE A.[CÓDIGO] = '1000889'

/*mudança de preço da tabela A com base no valor da tabela B origem*/
UPDATE A SET A.[PREÇO LISTA] = B.[PREÇO DE LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[CÓDIGO] = B.[CODIGO DO PRODUTO]
WHERE A.[CÓDIGO] = '1000889'

/*Podemos observar que os vendedores possuem bairros associados a eles. Vamos aumentar 
em 30% o volume de compra dos clientes que possuem, em seus endereços, bairros onde os 
vendedores possuam escritórios.*/

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