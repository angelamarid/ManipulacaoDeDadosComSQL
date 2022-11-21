
CREATE DATABASE [VENDAS SUCOS] /*criando o banco de dados*/

CREATE DATABASE [VENDAS SUCOS 2]
ON (NAME = VENDAS_SUCOS_2_DAT,
FILENAME = 'C:\TEMP\DATA\VENDAS_SUCOS_02.MDF', /*local onde o 
arquivo será salvo*/
SIZE = 10, /*o tamanho inicial da minha base vai ser 10MB*/
MAXSIZE = 50, /*o tamanho máximo da base com os dados vai ser 50MB*/
FILEGROWTH = 5) /* a base vai vai crescendo até chegar a 50MB.*/
LOG ON (NAME = VENDAS_SUCOS_2_LOG,
FILENAME = 'C:\TEMP\DATA\VENDAS_SUCOS_02.LDF',
SIZE = 10,
MAXSIZE = 50,
FILEGROWTH = 5)

DROP DATABASE [VENDAS SUCOS 2] /* apagando o banco*/

