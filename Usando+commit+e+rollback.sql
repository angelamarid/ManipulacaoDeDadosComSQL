/*commit � como se fosse uma confirma��o do que voc� fez. 
Se voc� der o comando rollback, ele volta ao estado do banco antes de ter rodado o comando. 
Se eu der o rollback, � como se ele desfizesse o que eu fiz.*/



SELECT * FROM [dbo].[VENDEDORES2]

BEGIN TRANSACTION 
/*quando eu der o comando begin transaction estou dizendo ao banco que estou come�ando uma transa��o. 
Ao dar esse comando, � como se o SQL server congelasse seu estado f�sico. Tudo que eu fizer depois ele vai 
efetuar, mas vai salvar isso em um arquivo de log*/

UPDATE [dbo].[VENDEDORES2] SET [COMISS�O] = [COMISS�O] * 1.15
SELECT * FROM [dbo].[VENDEDORES2]

INSERT INTO [dbo].[VENDEDORES2] ([MATRICULA], [NOME], [BAIRRO],[COMISS�O], [DATA ADMISS�O], [F�RIAS])
VALUES ('99999','Jo�o da Silva','Icara�',0.08,'2014-09-01',0)

ROLLBACK

COMMIT

