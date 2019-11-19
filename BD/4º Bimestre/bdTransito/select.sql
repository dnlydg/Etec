use bdTransito

--Exercício a)
select COUNT(idMotorista) 'Quantidade de Motoristas no banco' from dbo.tbMotorista

--Exercício b)
select COUNT(idMotorista) 'Quantidade de Motoristas com Silva no nome' from dbo.tbMotorista
	where nomeMotorista like '%Silva%'

--Exercício c)
select COUNT(idMotorista) 'Quantidade de Motoristas que Nasceram no ano 2000' from dbo.tbMotorista
	where DATEPART(YEAR,dataNascimentoMotorista) = 2000

--Exercício d)
select COUNT(idMotorista) 'Quantidade de Motoristas com Mais de 10 Pontos Acumulados' from tbMotorista
	where pontuacaoAcumulada > 10

--Exercício e) 
select nomeMotorista,SUM(pontosMulta)'soma dos pontos' from tbMotorista,tbMultas
	group by nomeMotorista

--Exercício f) 
select nomeMotorista,AVG(pontosMulta)'média dos pontos' from tbMotorista,tbMultas
	group by nomeMotorista

--Exercício g) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de veículos do motorista de código 1' from tbMotorista,tbVeiculo
	where tbMotorista.idMotorista =1  and tbVeiculo.idMotorista = 1
		group by nomeMotorista 

--Exercício h)
select COUNT(placa) from dbo.tbVeiculo
	where placa like 'A%'

--Exercício i)
select COUNT(idVeiculo) 'Veículos Fabricados antes de 2010' from dbo.tbVeiculo
	where anoVeiculo < 2010

--Exercício j)
select AVG(anoVeiculo) 'Média dos anos de fabricação dos veículos' from dbo.tbVeiculo

--Exercício k)
select COUNT(idVeiculo) 'Quantidade de veículos com Sedan no modelo' from dbo.tbVeiculo
	where modeloVeiculo like '%Sedan%'

--Exercício l)
select placa,SUM(pontosMulta) 'Somatória dos pontos multa e a placa dos veículos' from tbVeiculo,tbMultas
	group by placa

--Exercício m) 
select placa,AVG(pontosMulta) from tbVeiculo,tbMultas
	group by placa

--Exercício n) 
select placa,COUNT(idMulta) 'Multas Aplicadas em Abril de 2018' from tbVeiculo,tbMultas
	where DATEPART(MONTH,tbMultas.dataMulta) = 4 and DATEPART(YEAR,tbMultas.dataMulta) = 2018
		group by placa

--Exercício o) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 1 ou 2' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%1' or tbVeiculo.placa like '%2'
		group by nomeMotorista

--Exercício p) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 3 ou 4' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%3' or tbVeiculo.placa like '%4'
		group by nomeMotorista

--Exercício q) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 5 ou 6' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%5' or tbVeiculo.placa like '%6'
		group by nomeMotorista

--Exercício r) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 7 ou 8' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%7' or tbVeiculo.placa like '%8'
		group by nomeMotorista

--Exercício s) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 9 ou 0' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%9' or tbVeiculo.placa like '%0'
		group by nomeMotorista

--Exercício t)
select anoVeiculo, COUNT(idVeiculo) 'Veiculos do ano' from dbo.tbVeiculo
	group by anoVeiculo

--Exercício u)
select pontuacaoAcumulada, COUNT(idMotorista) 'Motorista por pontuação acumulada' from dbo.tbMotorista
	group by pontuacaoAcumulada

--Exercício v)
select COUNT(idMotorista) 'Motoristas com mais de 20 pontos acumulados' from dbo.tbMotorista
	where pontuacaoAcumulada > 20

--Exercício w) --

--Exercício x) --

--Exercício y)
select COUNT(placa) 'Veículos que não podem circular na Segunda-Feira' from tbVeiculo
	where placa like '%2' or placa like '%1'
