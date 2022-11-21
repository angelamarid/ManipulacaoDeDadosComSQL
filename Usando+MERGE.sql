/*o merge É como se fosse uma atualização de uma tabela para outra. */
SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] 
WHERE [CODIGO DO PRODUTO] = '1002334'

SELECT * FROM [PRODUTOS] WHERE [CÓDIGO] = '1002334'

SELECT B.[CODIGO DO PRODUTO], B.[PREÇO DE LISTA], A.[CÓDIGO], A.[PREÇO LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[CÓDIGO] = B.[CODIGO DO PRODUTO]
WHERE [CÓDIGO] = '1002334'

UPDATE [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] SET [PREÇO DE LISTA] = 8
WHERE [CODIGO DO PRODUTO] = '1002334'


/* tabela origem B tabela de recebimento A*/
MERGE INTO [PRODUTOS] A
USING [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[CÓDIGO] = B.[CODIGO DO PRODUTO]
AND A.[CÓDIGO] = '1002334'
WHEN MATCHED THEN /* quando houver a combinaçao*/
UPDATE SET A.[PREÇO LISTA] = B.[PREÇO DE LISTA]; 
/*Excepcionalmente o comando merge tem que terminar com 
ponto e vírgula, porque aqui não tenho um único comando. Tenho vários comandos sendo executados de uma 
vez só. O ponto e vírgula me diz que vou considerar essa sentença toda até achar o ponto e vírgula.*/


/*Podemos observar que os vendedores possuem bairros associados a eles. Vamos aumentar em 30% o volume de
 compra dos clientes que possuem, em seus endereços, bairros onde os vendedores possuam escritórios.*/

MERGE INTO [DBO].[CLIENTES] A
USING [DBO].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]
WHEN MATCHED THEN
UPDATE SET A.[VOLUME DE COMPRA] =   A.[VOLUME DE COMPRA] * 1.30;






