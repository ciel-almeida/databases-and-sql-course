USE my_first_db;

/* To ensure that the only row affected it's going to the intended one
it's recommended to select that row first and seeing if the selection 
using where brings unwanted rows */

SELECT COUNT(*) FROM CLIENTE WHERE NOME = 'ANA';
SELECT * FROM CLIENTE WHERE NOME = 'ANA';

DELETE FROM CLIENTE WHERE NOME = 'ANA' AND EMAIL = 'ANA@GMAIL.COM';