create database bdAula1SQL
go

use bdAula1SQL

create table tbDepartamento(
	codDepartamento int primary key identity(1,1)
	, nomeDepartamento varchar(40) not null
	)
create table tbFuncionario(
	codFuncionario int primary key identity(1,1)
	, nomeFuncionario varchar(50) not null
	, dnFuncionario smalldatetime not null
	, cpfFuncionario char(14) not null
	, codDepartamento int foreign key references tbDepartamento (codDepartamento)
	)
create table tbDependente(
	codDependente int primary key identity(1,1)
	, nomeDependente varchar(40) not null
	, dnDependente smalldatetime not null
	, codFuncionario int foreign key references tbFuncionario(codFuncionario)
)