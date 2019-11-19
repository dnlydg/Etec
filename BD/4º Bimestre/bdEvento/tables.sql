create database bdEvento

go

use bdEvento

create table tbConfirmacao(
	codConfirmacao int primary key identity(1,1)
	,dtConfirmacao smalldatetime not null
	,nomeConvidado varchar(75) not null
	,dtNascimentoConvidado datetime not null
	,sexoConvidado char(1) not null
	,statusConvidado varchar(3) not null
	,emailConvidado varchar(90) not null
	,foneConvidado varchar(12) not null
) 