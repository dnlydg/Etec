use bdEstoque

update tbProduto
	set valorProduto += valorProduto * 0.10
		where codFabricante = 1

update tbProduto
	set valorProduto -= valorProduto * 0.07
		where codFabricante = 2

update tbProduto
	set quantidadeProduto = quantidadeProduto - 30
		where codFornecedor = 1

update tbCliente
	set nomeCliente = 'Adriana Nogueira Silva Campos'
		where codCliente = 5

update tbVenda
	set valorTotalVenda -= valorTotalVenda * 0.05
		where dataVenda between '01/02/2014' and '28/02/2014'

delete tbItensVenda
	where codProduto = 5

update tbProduto
	set valorProduto -= valorProduto * 0.20
		where quantidadeProduto > 1000

update tbVenda
	set valorTotalVenda -= valorTotalVenda * 0.10
		where codCliente between 2 and 4

update tbProduto
	set valorProduto += valorProduto * 0.06
		where descricaoProduto like '%Sadia%'

update tbVenda
	set valorTotalVenda += valorTotalVenda * 0.02
		where dataVenda between '01/02/2014' and '28/02/2014'