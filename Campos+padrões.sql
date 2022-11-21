/*Quando crio uma tabela no SQL server posso definir um valor padrão para aquele campo. Se eu não 
especificar nada sobre o campo no insert, o SQL vai preencher aquele campo com um valor padrão. */

CREATE TABLE TAB_PADRAO
(ID INT IDENTITY (1,1) NOT NULL,
DESCRITOR VARCHAR(20) NULL,
ENDERECO VARCHAR(200) NULL,
CIDADE VARCHAR(50) DEFAULT 'Cidade não definida',  
/*comando DEFAULT faz com que alguns campos da minha tabela sejam preenchidos sem necessidade de 
especificar. */
DATA_CRIACAO DATE DEFAULT GETDATE()) /*DATE pegar a data no computador*/

INSERT INTO TAB_PADRAO (DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO) 
VALUES ('CLIENTE X', 'RUA PROJETADA A', 'SÃO PAULO', '2018-04-30')

SELECT * FROM TAB_PADRAO

INSERT INTO TAB_PADRAO (DESCRITOR) VALUES ('CLIENTE X') /*comando DEFAULT faz com que alguns campos da 
minha tabela sejam preenchidos sem necessidade de especificar. */

