

CREATE TABLE TAB_IDENTITY /*NOME DA TABELA*/
( ID INT IDENTITY (1,1) NOT NULL, 
DESCRITOR VARCHAR(20) NULL)

/* (1,1) O in�cio, que � o n�mero onde o auto incremento vai come�ar a ser contado, e o pr�prio incremento,
 de quantos em quantos valores. */

 /* inserindo dados na tabela, sem inserir i ID */
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE X')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Y')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE Z')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE W')
INSERT INTO TAB_IDENTITY (DESCRITOR) VALUES ('CLIENTE A')

SELECT * FROM TAB_IDENTITY

DELETE FROM TAB_IDENTITY WHERE ID = 1

DROP TABLE TAB_IDENTITY /*DELETANDO A TABELA*/

CREATE TABLE TAB_IDENTITY  /*CRIANDO A TABELA NOVAMENTO COM NOVOS IDs*/
( ID INT IDENTITY (100,5) NOT NULL,
DESCRITOR VARCHAR(20) NULL)

