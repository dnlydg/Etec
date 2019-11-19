create database bdTransito

go

use bdTransito

create table tbMotorista(
	idMotorista int primary key identity (1,1)
	,nomeMotorista varchar(80) not null
	,dataNascimentoMotorista smalldatetime not null
	,cpfMotorista char(11) not null
	,CNHMotorista char(11) not null
	,pontuacaoAcumulada int not null
)

create table tbVeiculo(
	idVeiculo int primary key identity (1,1)
	,modeloVeiculo char(30) not null
	,placa char(8) not null
	,renavam char(11) not null
	,anoVeiculo int not null 
	,idMotorista int foreign key references tbMotorista(idMotorista)
)
create table tbMultas(
	idMulta int primary key identity (1,1)
	,dataMulta smalldatetime not null
	,horaMulta smalldatetime not null
	,pontosMulta int not null
	,idVeiculo int foreign key references tbVeiculo(idVeiculo)
)