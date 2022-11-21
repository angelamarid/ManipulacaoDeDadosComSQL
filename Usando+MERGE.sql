/*o merge � como se fosse uma atualiza��o de uma tabela para outra. */
SELECT * FROM [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] 
WHERE [CODIGO DO PRODUTO] = '1002334'

SELECT * FROM [PRODUTOS] WHERE [C�DIGO] = '1002334'

SELECT B.[CODIGO DO PRODUTO], B.[PRE�O DE LISTA], A.[C�DIGO], A.[PRE�O LISTA]
FROM [PRODUTOS] A 
INNER JOIN [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[C�DIGO] = B.[CODIGO DO PRODUTO]
WHERE [C�DIGO] = '1002334'

UPDATE [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] SET [PRE�O DE LISTA] = 8
WHERE [CODIGO DO PRODUTO] = '1002334'


/* tabela origem B tabela de recebimento A*/
MERGE INTO [PRODUTOS] A
USING [SUCOS_VENDAS].[DBO].[TABELA DE PRODUTOS] B
ON A.[C�DIGO] = B.[CODIGO DO PRODUTO]
AND A.[C�DIGO] = '1002334'
WHEN MATCHED THEN /* quando houver a combina�ao*/
UPDATE SET A.[PRE�O LISTA] = B.[PRE�O DE LISTA]; 
/*Excepcionalmente o comando merge tem que terminar com 
ponto e v�rgula, porque aqui n�o tenho um �nico comando. Tenho v�rios comandos sendo executados de uma 
vez s�. O ponto e v�rgula me diz que vou considerar essa senten�a toda at� achar o ponto e v�rgula.*/


/*Podemos observar que os vendedores possuem bairros associados a eles. Vamos aumentar em 30% o volume de
 compra dos clientes que possuem, em seus endere�os, bairros onde os vendedores possuam escrit�rios.*/

MERGE INTO [DBO].[CLIENTES] A
USING [DBO].[VENDEDORES] B
ON A.[BAIRRO] = B.[BAIRRO]
WHEN MATCHED THEN
UPDATE SET A.[VOLUME DE COMPRA] =   A.[VOLUME DE COMPRA] * 1.30;






