CREATE DATABASE NOVA_LIVRARIA;

USE NOVA_LIVRARIA;

CREATE TABLE CLIENTE(
    IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    SEXO CHAR(1) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE,
    CPF VARCHAR (11) UNIQUE    
);

CREATE TABLE ENDERECO(
    IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    RUA VARCHAR(30) NOT NULL,
    BAIRRO VARCHAR(30) NOT NULL,
    CIDADE VARCHAR(30) NOT NULL,
    ESTADO CHAR(2) NOT NULL,
    ID_CLIENTE INT UNIQUE,

    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE (IDCLIENTE)
);

CREATE TABLE TELEFONE(
    IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO ENUM('RES', 'CEL', 'COM'),
    NUMERO VARCHAR(10) NOT NULL,
    ID_CLIENTE INT,

    FOREIGN KEY (ID_CLIENTE)
    REFERENCES CLIENTE (IDCLIENTE)
);

INSERT INTO CLIENTE VALUES(NULL, 'JOÃO', 'M', 'JOAO@IG.COM', '7656758787');
INSERT INTO CLIENTE VALUES(NULL, 'CARLOS', 'M', 'CARLOS@IG.COM', '5464553466');
INSERT INTO CLIENTE VALUES(NULL, 'ANA', 'F', 'ANA@IG.COM', '45654567'); --
INSERT INTO CLIENTE VALUES(NULL, 'CLARA', 'F', NULL, '5687766856');
INSERT INTO CLIENTE VALUES(NULL, 'JORGE', 'M', 'JORGE@IG.COM', '8756547688');
INSERT INTO CLIENTE VALUES(NULL, 'CELIA', 'F', 'CELIA@IG.COM', '5767876889');

+-----------+--------+------+---------------+------------+
| IDCLIENTE | NOME   | SEXO | EMAIL         | CPF        |
+-----------+--------+------+---------------+------------+
|         1 | JOÃO   | M    | JOAO@IG.COM   | 7656758787 |
|         2 | CARLOS | M    | CARLOS@IG.COM | 5464553466 |
|         3 | ANA    | F    | ANA@IG.COM    | 45654567   |
|         4 | CLARA  | F    | NULL          | 5687766856 |
|         5 | JORGE  | M    | JORGE@IG.COM  | 8756547688 |
|         6 | CELIA  | F    | CELIA@IG.COM  | 5767876889 |
+-----------+--------+------+---------------+------------+

/* INSERT 1 X 1 */
INSERT INTO ENDERECO VALUES(NULL,'RUA ANTONIO SA','CENTRO','B. HORIZONTE','MG',4);
INSERT INTO ENDERECO VALUES(NULL,'RUA CAPITAO HERMES','CENTRO','RIO DE JANEIRO','RJ',1);
INSERT INTO ENDERECO VALUES(NULL,'RUA PRES VARGAS','JARDINS','SAO PAULO','SP',3);
INSERT INTO ENDERECO VALUES(NULL,'RUA ALFANDEGA','ESTACIO','RIO DE JANEIRO','RJ',2);
INSERT INTO ENDERECO VALUES(NULL,'RUA DO OUVIDOR','FLAMENGO','RIO DE JANEIRO','RJ',6);
INSERT INTO ENDERECO VALUES(NULL,'RUA URUGUAIANA','CENTRO','VITORIA','ES',5);

+------------+--------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO   | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES VARGAS    | JARDINS  | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAIANA     | CENTRO   | VITORIA        | ES     |          5 |
+------------+--------------------+----------+----------------+--------+------------+

/* INSERT 1 X N */
INSERT INTO TELEFONE VALUES(NULL,'CEL','78458743',5);
INSERT INTO TELEFONE VALUES(NULL,'RES','56576876',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','87866896',1);
INSERT INTO TELEFONE VALUES(NULL,'COM','54768899',2);
INSERT INTO TELEFONE VALUES(NULL,'RES','99667587',1);
INSERT INTO TELEFONE VALUES(NULL,'CEL','78989765',3);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99766676',3);
INSERT INTO TELEFONE VALUES(NULL,'COM','66687899',1);
INSERT INTO TELEFONE VALUES(NULL,'RES','89986668',5);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88687909',2);

SELECT * FROM TELEFONE;

+------------+------+----------+------------+
| IDTELEFONE | TIPO | NUMERO   | ID_CLIENTE |
+------------+------+----------+------------+
|          1 | CEL  | 78458743 |          5 |
|          2 | RES  | 56576876 |          5 |
|          3 | CEL  | 87866896 |          1 |
|          4 | COM  | 54768899 |          2 |
|          5 | RES  | 99667587 |          1 |
|          6 | CEL  | 78989765 |          3 |
|          7 | CEL  | 99766676 |          3 |
|          8 | COM  | 66687899 |          1 |
|          9 | RES  | 89986668 |          5 |
|         10 | CEL  | 88687909 |          2 |
+------------+------+----------+------------+