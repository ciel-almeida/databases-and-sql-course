CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO(
    IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30),
    VALOR FLOAT(10,2)
);

CREATE DATABASE LOJA_BACKUP;
USE LOJA_BACKUP;

CREATE TABLE BKP_PRODUTO(
    IDBKP INT PRIMARY KEY AUTO_INCREMENT,
    IDPRODUTO INT,
    NOME VARCHAR(30),
    VALOR_ORIGINAL FLOAT(10,2),
    VALOR_NOVO FLOAT(10,2),
    DATA DATETIME,
    USUARIO VARCHAR(50),
    EVENTO CHAR(1)
);

USE LOJA;

/* MAKING OPERATIONS IN ANOTHER DATABASE */
INSERT INTO LOJA_BACKUP.BKP_PRODUTO VALUES(NULL, 1000, 'TESTE', 0.90);

SELECT * FROM LOJA_BACKUP.BKP_PRODUTO;

/* USING TRIGGERS TO MAKE AUTOMATIC OPERATIONS IN OTHER DATABASES */
DELIMITER $
CREATE TRIGGER SAVE_INSERTED_PRODUCT_IN_BACKUP
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
    INSERT INTO LOJA_BACKUP.BKP_PRODUTO VALUES(NULL, NEW.IDPRODUTO, NEW.NOME, NEW.VALOR, NULL, NOW(), CURRENT_USER(), 'I');
END
$
DELIMITER ;

DELIMITER $
CREATE TRIGGER SAVE_DELETED_PRODUCT_IN_BACKUP
BEFORE DELETE ON PRODUTO
FOR EACH ROW
BEGIN
    INSERT INTO LOJA_BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, NULL, NOW(), CURRENT_USER(), 'D');
END
$
DELIMITER ;

DELIMITER $
CREATE TRIGGER AUDIT_PRODUCT
BEFORE UPDATE ON PRODUTO
FOR EACH ROW
BEGIN
    INSERT INTO LOJA_BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, NEW.VALOR, NOW(), CURRENT_USER(), 'U');
END
$
DELIMITER ;

/* DELETING TRIGGERS */
DROP TRIGGER SAVE_INSERTED_PRODUCT_IN_BACKUP;

/* INSERTS FOR TESTS */
SELECT * FROM PRODUTO;
SELECT * FROM LOJA_BACKUP.BKP_PRODUTO;

INSERT INTO PRODUTO VALUES(NULL, 'Teclado Logitech G915', 958.25);
INSERT INTO PRODUTO VALUES(NULL, 'Poco X3 Pro', 1700.00);
INSERT INTO PRODUTO VALUES(NULL, 'Monitor 34 pol', 2568.55);
INSERT INTO PRODUTO VALUES(NULL, 'Placa de video Asus 1060 gt ', 860.15);
INSERT INTO PRODUTO VALUES(NULL, 'Memória RAM 16GB', 250.05);
INSERT INTO PRODUTO VALUES(NULL, 'Mouse Logitech Silent', 35.00);
INSERT INTO PRODUTO VALUES(NULL, 'Caixa de Som Edifier', 1374.44);

DELETE FROM PRODUTO WHERE IDPRODUTO = 2;
UPDATE PRODUTO SET VALOR = 45.12 WHERE IDPRODUTO = 6;