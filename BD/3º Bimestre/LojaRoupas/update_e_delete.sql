use bdLojaRoupas

update tbFabricante
	set nomeFabricante = 'Turma da Malha'
		where codFabricante = 3

update tbVenda
	set totalVendas -= totalVendas * 0.10
		where codCliente = 1

update tbProduto
	set precoProduto += precoProduto * 0.20
		where codFabricante = 2

update tbProduto
	set qtdeEstoque -= 10
		where codProduto = 3

delete tbItensVenda
	where codItensVenda = 4

delete tbItensVenda
	where codVenda = 3

delete tbFabricante
	where codFabricante = 1

/*N�o, Deu erro pois o fabricante de c�digo 1 j� est� cadastrado como chave estrangeira em outra tabela (tbProduto)*/

