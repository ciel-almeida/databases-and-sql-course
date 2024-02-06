USE INFORMATION_SCHEMA;

STATUS

SHOW TABLES;

DESC TABLE_CONSTRAINTS;

SELECT CONSTRAINT_SCHEMA AS "BANCO",
       TABLE_NAME AS "TABELA",
       CONSTRAINT_NAME AS "NOME REGRA",
       CONSTRAINT_TYPE AS "TIPO"
FROM TABLE_CONSTRAINTS
WHERE CONSTRAINT_SCHEMA = "DB_CONSTRAINTS_EXAMPLE";

/* DELETING CONSTRAINTS - SOMETIMES IS NECESSARY TO AVOID REFERENCIAL CHECKING */
USE DB_CONSTRAINTS_EXAMPLE;

ALTER TABLE TELEFONE
DROP FOREIGN KEY FK_CLIENTE_TELEFONE;
