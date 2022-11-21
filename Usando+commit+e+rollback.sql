/*commit é como se fosse uma confirmação do que você fez. 
Se você der o comando rollback, ele volta ao estado do banco antes de ter rodado o comando. 
Se eu der o rollback, é como se ele desfizesse o que eu fiz.*/



SELECT * FROM [dbo].[VENDEDORES2]

BEGIN TRANSACTION 
/*quando eu der o comando begin transaction estou dizendo ao banco que estou começando uma transação. 
Ao dar esse comando, é como se o SQL server congelasse seu estado físico. Tudo que eu fizer depois ele vai 
efetuar, mas vai salvar isso em um arquivo de log*/

UPDATE [dbo].[VENDEDORES2] SET [COMISSÃO] = [COMISSÃO] * 1.15
SELECT * FROM [dbo].[VENDEDORES2]

INSERT INTO [dbo].[VENDEDORES2] ([MATRICULA], [NOME], [BAIRRO],[COMISSÃO], [DATA ADMISSÃO], [FÉRIAS])
VALUES ('99999','João da Silva','Icaraí',0.08,'2014-09-01',0)

ROLLBACK

COMMIT

