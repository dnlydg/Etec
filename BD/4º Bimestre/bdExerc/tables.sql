create database bdExerc01

go

use bdExerc01

create table tbFunc(
	codFunc int primary key identity(1,1)
	,nome_func varchar (80) not null
	,uf char(2) not null
	,idade int not null
	,qtde_filhos int not null
)

create table tbFuncional(
	codFuncional int primary key identity(1,1)
	,cargo varchar(50) not null
	,salario money not null
	,tempo_empresa int not null
	,tempo_cargo int not null
	,sindicalizado char(3) not null
	,codFunc int foreign key references tbFunc(codFunc)
)