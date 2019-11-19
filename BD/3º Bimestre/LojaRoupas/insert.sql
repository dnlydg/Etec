use bdLojaRoupas

insert into tbFabricante (nomeFabricante)
values ('Malwee')
insert into tbFabricante (nomeFabricante)
values ('Marisol')
insert into tbFabricante (nomeFabricante)
values ('Cia da Malha')



insert into tbCliente (nomeCliente, idadeCliente)
values ('Jonathan Joestar', 32)
insert into tbCliente (nomeCliente, idadeCliente)
values ('Joseph Joestar', 66)
insert into tbCliente (nomeCliente, idadeCliente)
values ('Jotaro Kujo', 22)
insert into tbCliente (nomeCliente, idadeCliente)
values ('Josuke Higashikata' , 19)
insert into tbCliente (nomeCliente, idadeCliente)
values ('Giorno Giovana', 18)



insert into tbVendedor (nomeVendedor)
values ('João Santana')
insert into tbVendedor (nomeVendedor)
values ('Raquel Torres')



insert into tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
values ('Kars', 200, '25/05/1994', 5450.00)
insert into tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
values ('Wammu', 150, '14/08/1945', 3550.00)
insert into tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
values ('Esidisi', 250, '04/04/1974', 4680.00)



insert into tbProduto(nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Camisa Malwee', 65.00, '22/08/2019', 1, 1, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Calça Malwee', 40.00, '15/02/2019', 1, 1, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Moletom Malwee', 85.00, '06/07/2019', 1, 1, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Jaqueta Malwee', 120.00, '18/07/2018', 1, 1, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Shorts Malwee', 30.00, '10/02/2016', 1, 1, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Camisa Marisol', 45.00, '19/12/2017', 2, 2, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Calça Marisol', 30.00, '15/04/2018', 2, 2, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Moletom Marisol', 72.00, '24/06/2019', 2, 2, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Jaqueta Marisol', 89.90, '26/08/2019', 2, 2, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Shorts Marisol', 20.00, '16/11/2017', 2, 2, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Camisa Cia da Malha', 55.00, '15/09/2018', 3, 3, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Calça Cia da Malha', 45.00, '30/07/2016', 3, 3, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Moletom Cia da Malha', 65.00, '26/04/2017', 3, 3, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Jaqueta Cia da Malha', 85.00, '12/09/2018', 3, 3, 20)
insert into tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante, qtdeEstoque)
values ('Shorts Cia da Malha', 35.00, '12/06/2015', 3, 3, 20)



insert into tbVenda(dataVenda, codCliente, codVendedor, totalVendas)
values('22/08/2019', 1, 1, 205.00)
insert into tbVenda(dataVenda, codCliente, codVendedor, totalVendas)
values('21/08/2019', 2, 2, 105.00)
insert into tbVenda(dataVenda, codCliente, codVendedor, totalVendas)
values('25/08/2019', 3, 1, 75.00)
insert into tbVenda(dataVenda, codCliente, codVendedor, totalVendas)
values('24/08/2019', 4, 2, 112.00)
insert into tbVenda(dataVenda, codCliente, codVendedor, totalVendas)
values('23/08/2019', 5, 1, 110.00)



insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(1, 3, '1', 85.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(1, 4, '1', 120.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(2, 1, '1', 65.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(2, 2, '1', 40.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(3, 5, '1', 30.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(3, 6, '1', 45.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(4, 8, '1', 72.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(4, 10, '2', 40.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(5, 13, '1', 45.00)
insert tbItensVenda(codVenda, codProduto, quantidadeItens, subTotalItens)
values(5, 12, '1', 65.00)

select*from tbVenda
select*from tbFabricante
select*from tbCliente
select*from tbFuncionario
select*from tbProduto
select*from tbVenda
select*from tbVendedor
select*from tbItensVenda