/* CHANGING THE DELIMITER SO WE ARE ABLE TO USE ; INSIDE THE PROCEDURES */
DELIMITER $
CREATE PROCEDURE HELLO()
BEGIN
    SELECT "HELLO, THIS IS A STORED PROCEDURE." AS "HELLO";
END
$

DELIMITER ; -- CHANGING BACK TO THE USUAL DELIMITER

/* INVOKING THE STORED PROCEDURE */
CALL HELLO();

/* DELETING STORED PROCEDURES */
DROP PROCEDURE HELLO;

/* STORED PROCEDURE WITH PARAMS */
DELIMITER $
CREATE PROCEDURE SUM_OF_THREE(
    P_NUMBER1 INT, 
    P_NUMBER2 INT, 
    P_NUMBER3 INT
)
BEGIN
    SELECT P_NUMBER1 + P_NUMBER2 + P_NUMBER3 AS "RESULT";
END
$
DELIMITER ;

CALL SUM_OF_THREE(6, 4, 5);

