/*Da mesma maneira que quando criamos tabelas podemos criar um default para o campo, tamb?m podemos 
criar restri??es. N?s chamamos isso de check.*/

CREATE TABLE TAB_CHECK
(ID INT NOT NULL,
NOME VARCHAR(20) NULL,
IDADE INT NULL,
CIDADE VARCHAR(20) NULL,
CONSTRAINT CHK_PESSOA CHECK (IDADE >= 18)) /*o CHECK mostra a restri??o para o dado ser inserido 
no banco de dados*/

INSERT INTO TAB_CHECK (ID, NOME, IDADE, CIDADE) VALUES (1,'JO?O', 19, 'RIO DE JANEIRO')

INSERT INTO TAB_CHECK (ID, NOME, IDADE, CIDADE) VALUES (2,'PEDRO', 22, 'S?O PAULO')

CREATE TABLE TAB_CHECK2
(ID INT NOT NULL,
NOME VARCHAR(20) NULL,
IDADE INT NULL,
CIDADE VARCHAR(20) NULL,
CONSTRAINT CHK_PESSOA2 CHECK (IDADE >= 18 AND CIDADE = 'RIO DE JANEIRO'))

INSERT INTO TAB_CHECK2 (ID, NOME, IDADE, CIDADE) VALUES (1,'JO?O', 19, 'RIO DE JANEIRO')

INSERT INTO TAB_CHECK2 (ID, NOME, IDADE, CIDADE) VALUES (2,'PEDRO', 20, 'RIO DE JANEIRO')

UPDATE TAB_CHECK2 SET CIDADE = 'S?O PAULO' WHERE ID = 2 /* aresti??o tamb?m funciona aqui*/





