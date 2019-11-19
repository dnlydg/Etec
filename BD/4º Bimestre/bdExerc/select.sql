use bdExerc01

select SUM(codFunc) 'soma dos c�digos' from dbo.tbFunc

select SUM(idade) 'soma das idades' from dbo.tbFunc

select SUM(qtde_filhos) 'soma dos filhos' from dbo.tbFunc

select SUM(salario) 'soma dos sal�rios' from dbo.tbFuncional

select SUM(tempo_empresa) 'soma do tempo na empresa' from dbo.tbFuncional

select SUM(tempo_cargo) 'soma do tempo no cargo' from dbo.tbFuncional

select MAX(codFunc) 'maior c�digo' from dbo.tbFunc

select MIN(codFunc) 'menor c�digo' from dbo.tbFunc

select MAX(idade) 'maior idade' from dbo.tbFunc

select MIN(idade) 'menor idade' from dbo.tbFunc

select MAX(qtde_filhos) 'maior quantidade de filhos' from dbo.tbFunc

select MIN(qtde_filhos) 'menor quantidade de filhos' from dbo.tbFunc

select MAX(salario) 'maior salario' from dbo.tbFuncional

select MIN(salario) 'menor salario' from dbo.tbFuncional

select MAX(tempo_empresa) 'maior tempo na empresa' from dbo.tbFuncional

select MIN(tempo_empresa) 'menor tempo na empresa' from dbo.tbFuncional

select MAX(tempo_cargo) 'maior tempo no cargo' from dbo.tbFuncional

select MIN(tempo_cargo) 'menor tempo no cargo' from dbo.tbFuncional

select AVG(codFunc) 'm�dia dos c�digos' from dbo.tbFuncional

select AVG(idade) 'm�dia da idade' from dbo.tbFunc

select AVG(qtde_filhos) 'm�dia da quantidade de filhos' from dbo.tbFunc

select AVG(salario) 'm�dia do sal�rio' from dbo.tbFuncional

select AVG(tempo_empresa) 'm�dia do tempo de empresa' from dbo.tbFuncional

select AVG(tempo_cargo) 'm�dia do tempo no cargo' from dbo.tbFuncional

select COUNT (DISTINCT codFuncional) 'quantidade que ganham mais de R$800,00' from tbFuncional 
	where salario >= 800.00

select COUNT (DISTINCT codFuncional) 'quantidade que ganham mais de R$1000,00' from tbFuncional 
	where salario >= 1000.00

select COUNT (DISTINCT codFuncional) 'quantidade que ganham menos de R$400,00' from tbFuncional 
	where salario <= 400.00

select COUNT (DISTINCT codFuncional) 'quantidade que ganham menos de R$2000,00' from tbFuncional 
	where salario <= 2000.00

select COUNT (DISTINCT codFuncional) 'quantidade que ganham mais de R$8000,00' from tbFuncional 
	where salario >= 8000.00

select COUNT (DISTINCT codFuncional) 'quantidade que ganham menos de R$1000,00' from tbFuncional 
	where salario <= 1000.00

select COUNT (DISTINCT codFuncional) 'quantidade que tem o tempo de cargo igual a 1' from tbFuncional 
	where tempo_cargo = 1

select COUNT (DISTINCT codFuncional) 'quantidade que tem o tempo de cargo igual a 3' from tbFuncional 
	where tempo_cargo = 3

select COUNT (DISTINCT codFuncional) 'quantidade que tem o tempo de cargo maior que 10' from tbFuncional 
	where tempo_cargo >= 10

select COUNT (DISTINCT codFunc) 'quantidade que tem a idade superior a 20' from tbFunc
	where idade >= 20

select COUNT (DISTINCT codFunc) 'quantidade que tem a idade superior a 40' from tbFunc
	where idade >= 40

select COUNT (DISTINCT codFunc) 'quantidade de funcion�rios com idade inferior a 80' from tbFunc
	where idade <80

select COUNT (DISTINCT codFunc) 'quantidade de funcion�rios com idade inferior a 200' from tbFunc
	where idade <200

select COUNT(DISTINCT codFunc) 'quantidade de gerentes' from dbo.tbFuncional
	where cargo like 'Gerente'

select COUNT(DISTINCT codFunc) 'quantidade de analistas' from dbo.tbFuncional
	where cargo like 'Analista'

select COUNT(DISTINCT codFunc) 'quantidade de designers' from dbo.tbFuncional
	where cargo like 'Designer'

select COUNT(DISTINCT codFunc) 'quantidade de programadores' from dbo.tbFuncional
	where cargo like 'Programador'

select SUM(salario) 'somat�ria do sal�rio dos analistas' from dbo.tbFuncional
	where cargo like 'Analista'

select SUM(salario) 'somat�ria do sal�rio dos gerentes' from dbo.tbFuncional
	where cargo like 'Gerente'

select COUNT(codFunc) 'n�mero de funcion�rios que nasceram em s�o paulo'from dbo.tbFunc
	where uf like 'SP'

select COUNT(codFunc) 'n�mero de funcion�rios que nasceram na bahia'from dbo.tbFunc
	where uf like 'BH'

select COUNT(codFunc) 'n�mero de funcion�rios que nasceram no cear�'from dbo.tbFunc
	where uf like 'CE'

select COUNT(codFunc) 'n�mero de funcion�rios que nasceram no rio de janeiro'from dbo.tbFunc
	where uf like 'RJ'

select COUNT(codFunc) 'quantidade de funcion�rios na empresa exceto os que nasceram no rio de janeiro' from dbo.tbFunc
	where uf not like 'RJ' 

select COUNT(codFunc) 'quantidade de funcion�rios sindicalizados' from dbo.tbFuncional
	where sindicalizado like 'sim'

select COUNT(codFunc) 'quantidade de funcion�rios que n�o s�o sindicalizados' from dbo.tbFuncional
	where sindicalizado like 'n�o'