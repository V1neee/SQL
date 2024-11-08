CREATE DATABASE bdEscola
USE bdEscola

CREATE TABLE tbAluno(
	codAluno INT PRIMARY KEY
	,nomeAluno CHAR(30)
	,rgAluno CHAR(10)
	,cpfAluno CHAR(11)
	,lograAluno VARCHAR(40)
	,numLograAluno VARCHAR(40)
	,bairroAluno VARCHAR(40)
	,cidadealuno VARCHAR(40)
	,cepAluno CHAR(8)
	,ufAluno CHAR(2)
	,paisAluno VARCHAR(40)
)

CREATE TABLE tbFoneAluno(
	codFoneAluno INT PRIMARY KEY
	,numeroFoneAluno CHAR(13)
	,codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno)
)
--DROP DATABASE bdEscolaEtec