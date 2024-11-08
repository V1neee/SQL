CREATE DATABASE bdBlog
USE bdBlog

CREATE TABLE tbUsuario(
	codUsuario INT PRIMARY KEY
	,loginUsuario VARCHAR(40)
	,nomeUsuario CHAR(30)
	,senhaUsuario VARCHAR(30)
)
CREATE TABLE tbAdm(
	codAdm INT PRIMARY KEY
	,loginAdm VARCHAR(30)
	,senhaAdm VARCHAR(30)
)
CREATE TABLE tbComentario(
	codFoneUsuario INT PRIMARY KEY
	,numFoneUsuario CHAR(13)
	,codUsuario INT FOREIGN KEY REFERENCES tbUsuario (codUsuario)
)
CREATE TABLE tbEmailUsuario(
	codEmailUsuario INT PRIMARY KEY
	,emailUsuario VARCHAR(50)
	,codUsuario INT FOREIGN KEY REFERENCES tbUsuario (codUsuario) 
)
CREATE TABLE tbPostagem(
	codPostagem INT PRIMARY KEY
	,dataPostagem CHAR(8) 
	,horaPostagem CHAR(5)
	,tituloPostagem VARCHAR
	,conteudoPostagem VARCHAR
	,codUsuario INT FOREIGN KEY REFERENCES tbUsuario (codUsuario)
)
CREATE TABLE tbComment(
	codComment INT PRIMARY KEY
	,dataComment CHAR(8)
	,horaComment CHAR(5)
	,conteudoComment VARCHAR
	,codPostagem INT FOREIGN KEY REFERENCES tbPostagem (codPostagem)
	,codUsuario INT FOREIGN KEY REFERENCES tbUsuario (codUsuario)
	,statusComment VARCHAR
)