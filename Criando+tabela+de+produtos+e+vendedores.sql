
CREATE TABLE [PRODUTOS]
([CÓDIGO] VARCHAR(10) NOT NULL, /*Quando o campo é chave primária, ele não pode aceitar nulos.*/
[DESCRITOR] VARCHAR(100) NULL,
[SABOR] VARCHAR(50) NULL,
[TAMANHO] VARCHAR(50) NULL,
[EMBALAGEM] VARCHAR(50) NULL,
[PREÇO LISTA] FLOAT NULL,
CONSTRAINT [PK_PRODUTOS] PRIMARY KEY CLUSTERED ([CÓDIGO]))/*Onde tenho especificado também que tenho 
chave primária, posso já criar na especificação da tabela. Dou vírgula dentro do parênteses principal 
e especifico a chave. Normalmente colocamos a letra pk_ na frente do nome do arquivo que vai representar 
a chave primária.*/

CREATE TABLE [VENDEDORES]
([MATRÍCULA] VARCHAR(5) NOT NULL,
[NOME] VARCHAR(100) NULL,
[BAIRRO] VARCHAR(50) NULL,
[COMISSÃO] FLOAT NULL,
[DATA ADMISSÃO] DATE NULL,
[FÉRIAS] BIT NULL,
CONSTRAINT [PK_VENDEDORES] PRIMARY KEY CLUSTERED ([MATRÍCULA])) /* especificando a chave primária*/

CREATE TABLE [CLIENTES](
    [CPF] VARCHAR(11) NOT NULL,
    [NOME] VARCHAR(50) NULL,
    [ENDEREÇO] VARCHAR(100) NULL,
    [BAIRRO] VARCHAR(50) NULL,
    [CIDADE] VARCHAR(50) NULL,
    [ESTADO] VARCHAR(50) NULL,
    [CEP] VARCHAR(8) NULL,
    [DATA NASCIMENTO] DATE NULL,
    [IDADE] INT NULL,
    [SEXO] VARCHAR(1),
    [LIMITE DE CRÉDITO] FLOAT,
    [VOLUME DE COMPRA] FLOAT,
    [PRIMEIRA COMPRA] BIT, 
    CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED ([CPF])
)

