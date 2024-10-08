/* VARIAVEIS COM SELECT */

SELECT 10 + 10
GO

CREATE TABLE RESULTADO(
	IDRESULTADO INT PRIMARY KEY IDENTITY,
	RESULTADO INT
)
GO

INSERT INTO RESULTADO VALUES((SELECT 10 + 10))
GO

SELECT * FROM RESULTADO
GO

/* ATRIBUINDO SELECTS A VARIAVEIS - ANONIMO */

DECLARE
		@RESULTADO INT
		SET @RESULTADO = (SELECT 50 + 50)
		INSERT INTO RESULTADO VALUES(@RESULTADO)
		GO
		


DECLARE
		@RESULTADO INT
		SET @RESULTADO = (SELECT 50 + 50)
		INSERT INTO RESULTADO VALUES(@RESULTADO)
		PRINT 'VALOR INSERIDO NA TABELA: ' + CAST(@RESULTADO AS VARCHAR)
		GO