
CREATE TABLE [PRODUTOS]
([C�DIGO] VARCHAR(10) NOT NULL, /*Quando o campo � chave prim�ria, ele n�o pode aceitar nulos.*/
[DESCRITOR] VARCHAR(100) NULL,
[SABOR] VARCHAR(50) NULL,
[TAMANHO] VARCHAR(50) NULL,
[EMBALAGEM] VARCHAR(50) NULL,
[PRE�O LISTA] FLOAT NULL,
CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED ([C�DIGO]))/*Onde tenho especificado tamb�m que tenho 
chave prim�ria, posso j� criar na especifica��o da tabela. Dou v�rgula dentro do par�nteses principal 
e especifico a chave. Normalmente colocamos a letra pk_ na frente do nome do arquivo que vai representar 
a chave prim�ria.*/

CREATE TABLE [VENDEDORES]
([MATR�CULA] VARCHAR(5) NOT NULL,
[NOME] VARCHAR(100) NULL,
[BAIRRO] VARCHAR(50) NULL,
[COMISS�O] FLOAT NULL,
[DATA ADMISS�O] DATE NULL,
[F�RIAS] BIT NULL,
CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED ([MATR�CULA])) /* especificando a chave prim�ria*/

CREATE TABLE [CLIENTES](
    [CPF] VARCHAR(11) NOT NULL,
    [NOME] VARCHAR(50) NULL,
    [ENDERE�O] VARCHAR(100) NULL,
    [BAIRRO] VARCHAR(50) NULL,
    [CIDADE] VARCHAR(50) NULL,
    [ESTADO] VARCHAR(50) NULL,
    [CEP] VARCHAR(8) NULL,
    [DATA NASCIMENTO] DATE NULL,
    [IDADE] INT NULL,
    [SEXO] VARCHAR(1),
    [LIMITE DE CR�DITO] FLOAT,
    [VOLUME DE COMPRA] FLOAT,
    [PRIMEIRA COMPRA] BIT, 
    CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED ([CPF])
)

