use bdEscola

select nomeAluno, rgAluno, dataNascimentoAluno from bdEscola.dbo.tbAluno
	where naturalidadeAluno like 'SP'

select nomeAluno, rgAluno from bdEscola.dbo.tbAluno
	where nomeAluno like 'P%'

select nomeCurso from bdEscola.dbo.tbCurso
	where cargahorarioCurso > 2000

select nomeAluno, rgAluno from bdEscola.dbo.tbAluno
	where nomeAluno like '%Silva%'

select nomeAluno, dataNascimentoAluno from bdEscola.dbo.tbAluno
	where DATEPART(MONTH,dataNascimentoAluno) = 3

select codAluno, dataMatricula from bdEscola.dbo.tbMatricula
	where DATEPART(MONTH,dataMatricula) = 5

select codAluno from bdEscola.dbo.tbMatricula
	where codTurma = 1 or codTurma = 2

select codAluno from bdEscola.dbo.tbMatricula
	where codTurma = 3

select * from tbAluno

select * from tbTurma