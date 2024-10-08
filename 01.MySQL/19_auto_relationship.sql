CREATE DATABASE DB_AUTO_REL;
USE DB_AUTO_REL;

CREATE TABLE CURSOS(
    ID_CURSO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    VALOR FLOAT(10,2),
    ID_PREREQ_FK INT
);

ALTER TABLE CURSOS
ADD HORAS INT
AFTER NOME;

ALTER TABLE CURSOS
ADD CONSTRAINT FK_PREREQ
FOREIGN KEY (ID_PREREQ_FK)
REFERENCES CURSOS(ID_CURSO);

INSERT INTO CURSOS VALUES(NULL,'BD RELACIONAL',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'BUSINESS INTELLIGENCE',40,800.00,1);
INSERT INTO CURSOS VALUES(NULL,'RELATORIOS AVANCADOS',20,600.00,2);
INSERT INTO CURSOS VALUES(NULL,'LOGICA PROGRAM',20,400.00,NULL);
INSERT INTO CURSOS VALUES(NULL,'RUBY',30,500.00,4);

SELECT
    C.ID_CURSO AS ID,
    C.NOME AS NOME,
    C.VALOR AS VALOR,
    C.HORAS AS CARGA,
    IFNULL(P.NOME, '-----') AS REQUISITO
FROM CURSOS C
LEFT JOIN CURSOS P
ON P.ID_CURSO = C.ID_PREREQ_FK;
