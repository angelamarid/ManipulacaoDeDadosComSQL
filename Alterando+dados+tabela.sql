SELECT * FROM PRODUTOS

UPDATE [PRODUTOS] SET [PREÇO LISTA] = 5 /* UPDATE comando para modificar os dados*/
WHERE [CÓDIGO] = '1000889'

UPDATE [PRODUTOS] SET [SABOR] = 'Laranja', [EMBALAGEM] = 'PET'
WHERE [CÓDIGO] = '1000889' /* mais de uma alteração*/

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracujá'

UPDATE [PRODUTOS] SET [PREÇO LISTA] = [PREÇO LISTA] * 1.1
WHERE [SABOR] = 'Maracujá' /*reajustar em 10% o preço de todos os produtos de sabor 
maracujá*/

SELECT * FROM PRODUTOS WHERE [SABOR] = 'Maracujá'

/*Modifique o endereço do cliente 19290992743 para R. Jorge Emilio 23, em Santo Amaro, 
São Paulo, SP, CEP 8833223.*/

SELECT * FROM [dbo].[CLIENTES] WHERE [CPF] = 19290992743

UPDATE [dbo].[CLIENTES] SET [ENDEREÇO] = 'R. Jorge Emilio 23', [BAIRRO] = 'Santo Amaro',
[CIDADE] = 'São Paulo', [ESTADO]='SP',[CEP] = '8833223'
WHERE [CPF] = 19290992743

SELECT * FROM [dbo].[CLIENTES] WHERE [CPF] = 19290992743


/*Altere o volume de compra em 20% dos clientes do estado do Rio de Janeiro.*/
SELECT * FROM [dbo].[CLIENTES] WHERE [CIDADE] = 'Rio de Janeiro'

UPDATE [dbo].[CLIENTES] SET [VOLUME DE COMPRA] = [VOLUME DE COMPRA]*1.2
WHERE [CIDADE] = 'Rio de Janeiro' 

SELECT * FROM [dbo].[CLIENTES] WHERE [CIDADE] = 'Rio de Janeiro'


