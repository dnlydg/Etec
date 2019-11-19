use bdTransito

--Exerc�cio a)
select COUNT(idMotorista) 'Quantidade de Motoristas no banco' from dbo.tbMotorista

--Exerc�cio b)
select COUNT(idMotorista) 'Quantidade de Motoristas com Silva no nome' from dbo.tbMotorista
	where nomeMotorista like '%Silva%'

--Exerc�cio c)
select COUNT(idMotorista) 'Quantidade de Motoristas que Nasceram no ano 2000' from dbo.tbMotorista
	where DATEPART(YEAR,dataNascimentoMotorista) = 2000

--Exerc�cio d)
select COUNT(idMotorista) 'Quantidade de Motoristas com Mais de 10 Pontos Acumulados' from tbMotorista
	where pontuacaoAcumulada > 10

--Exerc�cio e) 
select nomeMotorista,SUM(pontosMulta)'soma dos pontos' from tbMotorista,tbMultas
	group by nomeMotorista

--Exerc�cio f) 
select nomeMotorista,AVG(pontosMulta)'m�dia dos pontos' from tbMotorista,tbMultas
	group by nomeMotorista

--Exerc�cio g) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de ve�culos do motorista de c�digo 1' from tbMotorista,tbVeiculo
	where tbMotorista.idMotorista =1  and tbVeiculo.idMotorista = 1
		group by nomeMotorista 

--Exerc�cio h)
select COUNT(placa) from dbo.tbVeiculo
	where placa like 'A%'

--Exerc�cio i)
select COUNT(idVeiculo) 'Ve�culos Fabricados antes de 2010' from dbo.tbVeiculo
	where anoVeiculo < 2010

--Exerc�cio j)
select AVG(anoVeiculo) 'M�dia dos anos de fabrica��o dos ve�culos' from dbo.tbVeiculo

--Exerc�cio k)
select COUNT(idVeiculo) 'Quantidade de ve�culos com Sedan no modelo' from dbo.tbVeiculo
	where modeloVeiculo like '%Sedan%'

--Exerc�cio l)
select placa,SUM(pontosMulta) 'Somat�ria dos pontos multa e a placa dos ve�culos' from tbVeiculo,tbMultas
	group by placa

--Exerc�cio m) 
select placa,AVG(pontosMulta) from tbVeiculo,tbMultas
	group by placa

--Exerc�cio n) 
select placa,COUNT(idMulta) 'Multas Aplicadas em Abril de 2018' from tbVeiculo,tbMultas
	where DATEPART(MONTH,tbMultas.dataMulta) = 4 and DATEPART(YEAR,tbMultas.dataMulta) = 2018
		group by placa

--Exerc�cio o) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 1 ou 2' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%1' or tbVeiculo.placa like '%2'
		group by nomeMotorista

--Exerc�cio p) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 3 ou 4' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%3' or tbVeiculo.placa like '%4'
		group by nomeMotorista

--Exerc�cio q) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 5 ou 6' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%5' or tbVeiculo.placa like '%6'
		group by nomeMotorista

--Exerc�cio r) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 7 ou 8' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%7' or tbVeiculo.placa like '%8'
		group by nomeMotorista

--Exerc�cio s) 
select nomeMotorista,COUNT(idVeiculo) 'Quantidade de carros com as placas termindadas em 9 ou 0' from tbMotorista,tbVeiculo
	where tbVeiculo.placa like '%9' or tbVeiculo.placa like '%0'
		group by nomeMotorista

--Exerc�cio t)
select anoVeiculo, COUNT(idVeiculo) 'Veiculos do ano' from dbo.tbVeiculo
	group by anoVeiculo

--Exerc�cio u)
select pontuacaoAcumulada, COUNT(idMotorista) 'Motorista por pontua��o acumulada' from dbo.tbMotorista
	group by pontuacaoAcumulada

--Exerc�cio v)
select COUNT(idMotorista) 'Motoristas com mais de 20 pontos acumulados' from dbo.tbMotorista
	where pontuacaoAcumulada > 20

--Exerc�cio w) --

--Exerc�cio x) --

--Exerc�cio y)
select COUNT(placa) 'Ve�culos que n�o podem circular na Segunda-Feira' from tbVeiculo
	where placa like '%2' or placa like '%1'
