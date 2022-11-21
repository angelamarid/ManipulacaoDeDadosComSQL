
ALTER TABLE [VENDAS] WITH CHECK ADD CONSTRAINT [FK_VENDAS_CLIENTES] /*criando o relacionamento*/
FOREIGN KEY([CPF]) REFERENCES [CLIENTES] ([CPF]) /*campo CPF é o que realiza o relacionamento entre as 
tabelas*/

