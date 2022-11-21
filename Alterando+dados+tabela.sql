SELECT * FROM PRODUTOS

UPDATE [PRODUTOS] SET [PRE�O LISTA] = 5 /* UPDATE comando para modificar os dados*/
WHERE [C�DIGO] = '1000889'

UPDATE [PRODUTOS] SET [SABOR] = 'Laranja', [EMBALAGEM] = 'PET'
WHERE [C�DIGO] = '1000889' /* mais de uma altera��o*/

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracuj�'

UPDATE [PRODUTOS] SET [PRE�O LISTA] = [PRE�O LISTA] * 1.1
WHERE [SABOR] = 'Maracuj�' /*reajustar em 10% o pre�o de todos os produtos de sabor 
maracuj�*/

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracuj�'

/*Modifique o endere�o do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, 
S�o Paulo, SP, CEP 8833223.*/

SELECT * FROM [dbo].[CLIENTES] WHERE [CPF] = 19290992743

UPDATE [dbo].[CLIENTES] SET [ENDERE�O] = 'R. Jorge Emilio 23', [BAIRRO] = 'Santo Amaro',
[CIDADE] = 'S�o Paulo', [ESTADO]='SP',[CEP] = '8833223'
WHERE [CPF] = 19290992743

SELECT * FROM [dbo].[CLIENTES] WHERE [CPF] = 19290992743


/*Altere o volume de compra em 20% dos clientes do estado do Rio de Janeiro.*/
SELECT * FROM [dbo].[CLIENTES] WHERE [CIDADE] = 'Rio de Janeiro'

UPDATE [dbo].[CLIENTES] SET [VOLUME DE COMPRA] = [VOLUME DE COMPRA]*1.2
WHERE [CIDADE] = 'Rio de Janeiro' 

SELECT * FROM [dbo].[CLIENTES] WHERE [CIDADE] = 'Rio de Janeiro'


