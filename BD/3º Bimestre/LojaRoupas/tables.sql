create database bdLojaRoupas

go

use bdLojaRoupas

create table tbCliente(
	codCliente int primary key identity (1,1)
	, nomeCliente char(75) not null
	, idadeCliente varchar(3) not null
)
create table tbVendedor(
	codVendedor int primary key identity (1,1)
	, nomeVendedor char(75) not null
)
create table tbFuncionario(
	codFuncionario int primary key identity (1,1)
	, nomeFuncionario char(75) not null
	, idadeFuncionario varchar(3) not null
	, dataAdmissao smalldatetime not null
	, salarioFuncionario smallmoney not null
)
create table tbFabricante(
	codFabricante int primary key identity (1,1)
	, nomeFabricante char(20) not null
)
create table tbProduto(
	codProduto int primary key identity (1,1)
	, nomeProduto char(35) not null
	, precoProduto smallmoney not null
	, dataEntradaProduto smalldatetime not null
	, codFuncionario int foreign key references tbFuncionario(codFuncionario)
	, codFabricante int foreign key references tbFabricante(codFabricante)
	, qtdeEstoque int not null
)
create table tbVenda(
	codVenda int primary key identity (1,1)
	, dataVenda smalldatetime not null
	, codCliente int foreign key references tbCliente(codCliente) 
	, codVendedor int foreign key references tbVendedor(codVendedor)
	, totalVendas smallmoney not null
)
create table tbItensVenda(
	codItensVenda int primary key identity (1,1)
	, codVenda int foreign key references tbVenda(codVenda)
	, codProduto int foreign key references tbProduto(codProduto)
	, quantidadeItens varchar(4) not null
	, subTotalItens smallmoney not null
)