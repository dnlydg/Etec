create database bdAcademia
go

use bdAcademia

create table tbDuracaoPlano(
	codDuracaoPlano int primary key identity (1,1)
	, descDuracaoPlano varchar (10)
)
create table tbPlano(
	codPlano int primary key identity(1,1)
	,descPlano char(10) not null
	,valorPlano smallMoney not null
)
create table tbHorario(
	codHorario int primary key identity(1,1)
	, descHorario smalldatetime not null 
)
create table tbProfessor(
	codProfessor int primary key identity(1,1)
	, nomeProfessor char(75) not null
)
create table tbFoneProfessor(
	codFoneProfessor int primary key identity(1,1)
	, numFoneProfessor char(13)
	, codProfessor int foreign key references tbProfessor(codProfessor)
)
create table tbAluno(
	codAluno int primary key identity(1,1)
	,nomeAluno char(75) not null
	,cpfAluno char(14) not null
	,rgAluno char(15) not null
)
create table tbFoneAluno(
	codFoneAluno int primary key identity(1,1) 
	, numFoneAluno char(13)
	,codAluno int foreign key references tbAluno(codAluno)
)
create table tbModalidade(
	codModalidade int primary key identity(1,1)
	, codProfessor int foreign key references tbProfessor(codProfessor)
	, descModalidade char(14)
)
create table tbHorarioModalidade(
	codHorarioModalidade int primary key identity(1,1)
	, codHorario int foreign key references tbHorario(codHorario)
	, codModalidade int foreign key references tbModalidade(codModalidade)
)
create table tbMatricula(
	codMatricula int primary key identity(1,1)
	, codAluno int foreign key references tbAluno(codAluno)
	, codPlano int foreign key references tbPlano(codPlano)
)
create table tbModalidadePlano(
	codModalidadePlano int primary key identity(1,1)
	, codModalidade int foreign key references tbModalidade(codModalidade)
	, codPlano int foreign key references tbPlano(codPlano)
)