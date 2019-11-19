create database bdEstoque

go

use bdEstoque

create table tbCliente(
	codCliente int primary key identity (1,1)
	, nomeCliente char (50) not null
	, cpfCliente char (11) not null
	, emailCliente varchar (30)
	, sexoCliente char (1) not null
	, dataNascimentoCliente datetime not null
)
create table tbFabricante(
	codFabricante int primary key identity (1,1)
	, nomeFabricante varchar (10) not null

)
create table tbFornecedor(
	codFornecedor int primary key identity (1,1)
	, nomeFornecedor varchar (12) not null
	, contatoFornecedor varchar (30) not null
)
create table tbVenda(
	codVenda int primary key identity (1,1)
	, dataVenda smalldatetime not null
	, valorTotalVenda money not null
	, codCliente int foreign key references tbCliente(codCliente)
)
create table tbProduto (
	codProduto int primary key identity (1,1)
	, descricaoProduto varchar(50) not null
	, valorProduto smallmoney not null
	, quantidadeProduto varchar(4) not null
	, codFabricante int foreign key references tbFabricante(codFabricante)
	, codFornecedor int foreign key references tbFornecedor(codFornecedor)
)
create table tbItensVenda (
	codItensVenda int primary key identity (1,1)
	, codVenda int foreign key references tbVenda(codVenda) 
	, codProduto int foreign key references tbProduto(codProduto)
	, quantidadeItensVenda varchar(3) not null
	, subTotalItensVenda money not null
)
