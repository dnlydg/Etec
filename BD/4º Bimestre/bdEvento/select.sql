use bdEvento

select nomeConvidado,dtNascimentoConvidado from tbConfirmacao

select * from tbConfirmacao
	where codConfirmacao > 5

select nomeConvidado, sexoConvidado from tbConfirmacao
	where sexoConvidado = 'm'

select * from tbConfirmacao
	where codConfirmacao between 2 and 5

select * from tbConfirmacao
	order by nomeConvidado

select * from tbConfirmacao
	where dtNascimentoConvidado = '08/02/1981'

select * from tbConfirmacao
	where statusConvidado like 'n�o' and sexoConvidado like 'f'

select nomeConvidado, sexoConvidado, statusConvidado from tbConfirmacao
	where nomeConvidado like 'A%'

select COUNT(statusConvidado) as 'Quantos v�o ao evento' from tbConfirmacao
	where statusConvidado like 'sim'

select COUNT(statusConvidado) as 'Quantos n�o v�o ao evento' from tbConfirmacao
	where statusConvidado like 'n�o'
	
select * from tbConfirmacao
	order by(dtConfirmacao) desc

select COUNT(statusConvidado) as 'Quantos v�o ao evento e s�o menores de idade' from tbConfirmacao
	where statusConvidado like 'sim' and DATEPART(YEAR, dtNascimentoConvidado) > 2001


