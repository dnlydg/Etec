use bdEscola

insert into tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
	values('Paulo Santos','03/10/2000','82.292.122-0','SP')
insert into tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
	values('Maria da Gloria','10/03/1999','45.223.123-0','SP')
insert into tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
	values('Perla Nogueira Silva','04/04/1998','23.533.211-9','SP')
insert into tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
	values('Gilson Barros Silva','09/09/1995','34.221.111-X','PE')
insert into tbAluno(nomeAluno,dataNascimentoAluno,rgAluno,naturalidadeAluno)
	values('Mariana Barbosa Santos','10/10/2001','54.222.122-9','RJ')

insert into tbCurso(nomeCurso,cargahorarioCurso,valorCurso)
	values('Inglês',2000,356.00)
insert into tbCurso(nomeCurso,cargahorarioCurso,valorCurso)
	values('Alemão',3000,478.00)

insert into tbTurma(nomeTurma,codCurso,horarioTurma)
	values('1|A',1,'12:00:00')
insert into tbTurma(nomeTurma,codCurso,horarioTurma)
	values('1|B',1,'18:00:00')
insert into tbTurma(nomeTurma,codCurso,horarioTurma)
	values('1AA',2,'19:00:00')

insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('10/03/2015',1,1)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('05/04/2014',2,1)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('05/03/2012',3,2)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('03/03/2016',1,3)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('05/07/2015',4,2)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('07/05/2015',4,3)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('06/06/2015',5,1)
insert into tbMatricula(dataMatricula,codAluno,codTurma)
	values('05/05/2015',5,3)

select * from tbAluno
select * from tbCurso
select * from tbTurma
select * from tbMatricula