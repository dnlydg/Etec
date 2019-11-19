create database bdLojaRoupa
go

use bdLojaRoupa

create table tbCategoriaProduto(
	codCategoria int primary key identity (1,1)
	, descCategoria varchar (30) not null
)

create table tbVendedor(
	codVendedor int primary key identity (1,1)
	, nomeVendedor varchar (50) not null
	, cpfVendedor char (11) not null
	, rgVendedor char (15) not null
)

create table tbFoneFabricante(
	codFoneFabricante int primary key identity (1,1)
	, numFoneFabricante varchar (11) not null

)

create table tbFabricante(
	codFabricante int primary key identity (1,1)
	, nomeFabricante varchar (50) not null
	, cnpj char (14) not null
	, codFoneFabricante int foreign key references tbFoneFabricante (codFoneFabricante)
)

create table tbFormPagamento(
	codFormPagamento int primary key identity (1,1)
	, descFormPagamento varchar (30) not null
)

create table tbCliente (
	codCliente int primary key identity (1,1)
	, nomeCliente varchar (50) not null
	, cpfCliente char (11) not null
	, emailCliente varchar (80)
)

create table tbVenda (
	codVenda int primary key identity (1,1)
	, dataVenda smallDateTime not null
	, valorTotalVenda smallmoney not null
	, codVendedor int foreign key references tbVendedor(codVendedor) 
	, codCliente int foreign key references tbCliente (codCliente)
	, numParcelas char(2)
)
create table tbProduto(
	codProduto int primary key identity (1,1)
	, descProduto varchar(75)
	, valorProduto smallmoney
	, quantProduto varchar(3)
	, codFabricante int foreign key references tbFabricante (codFabricante)
	, codCategoria int foreign key references tbCategoriaProduto (codCategoria)
	, detalheProduto varchar(50)
)

