/* CREATING DATABASE */ CREATE DATABASE my_first_db;

/* USING THE DATABASE */
USE my_first_db;

/* CREATING A NEW TABLE */
CREATE TABLE CLIENTE (
    NOME VARCHAR(30),
    SEXO CHAR(1),
    EMAIL VARCHAR(50),
    CPF INT (11),
    TELEFONE VARCHAR(30),
    ENDERECO VARCHAR(150)
);

/* SHOWING THE TABLES IN A DATABASE */
SHOW TABLES;

/* SHOWING THE STRUCTURE OF A TABLE */
DESC CLIENTE;

/* INSERTING VALUES IN A TABLE - 3 WAYS TO DO IT */
/* 01 - OMITING COLUMNS */
INSERT INTO CLIENTE VALUES('JOAO', 'M', 'JOAO@GMAIL.COM', 988638273, '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('CELIA', 'F', 'CELIA@GMAIL.COM', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');

INSERT INTO CLIENTE VALUES('JORGE', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* 02 - WITH COLUMNS */
INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('LILIAN','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696',887774856);

/* 03 - COMPACT INSERT - ONLY MYSQL */
INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');
						  
-- INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',99999999999);

-- INSERT INTO CLIENTE(NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','883665843',22222222222);