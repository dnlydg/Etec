create database bdImobiliaria

go

use bdImobiliaria

create table tbEnderecoImovel(
	codEnderecoImovel int primary key identity(1,1)
	, logradouroEnderecoImovel varchar(50) not null
	, numCasaEnderecoImovel varchar(6) not null
	, complementoEnderecoImovel varchar(12)
	, cepEnderecoImovel varchar(11)
	, bairroEnderecoImovel varchar(50)
	, cidadeEnderecoImovel varchar(50)
	, estadoEnderecoImovel varchar(50)
	, paisEnderecoImovel varchar(50)
	)



