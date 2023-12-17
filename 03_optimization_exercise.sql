/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

/* 01. Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas */
SELECT COUNT(*) FROM funcionarios WHERE departamento = 'Roupas'; 
SELECT COUNT(*) FROM funcionarios WHERE departamento = 'Filmes'; 
-- 21 | Filmes   53 | Roupas

SELECT idFuncionario AS id, nome 
FROM funcionarios 
WHERE departamento = 'Roupas' 
OR departamento = 'Filmes';

/* Como estamos trabalhando com OR e a segunda condicao é opcional colocamos na primeira condicao quem tem mais chances de uma saida verdadeira, pois a segunda condicao nao será checada nesse caso. */



/* 2. O gestor de marketing pediu a lista das funcionarias que trabalhem no departamento 
 de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras desses dois setores. */
--Feminino 491 ocorrencias
-- Lar | 52 - Filmes | 21
 SELECT COUNT(*) FROM funcionarios WHERE departamento = 'Filmes' AND sexo = 'Feminino';
 SELECT COUNT(*) FROM funcionarios WHERE departamento = 'Lar' AND sexo = 'Feminino';

 SELECT nome, email 
 FROM funcionarios 
 WHERE (departamento = 'Lar' 
 OR departamento = 'Filmes') 
 AND sexo = 'Feminino';


/* 3. Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim */
 SELECT COUNT(*) FROM funcionarios WHERE departamento = 'Jardim';
 SELECT COUNT(*) FROM funcionarios WHERE sexo = 'Masculino';
 SELECT COUNT(*) FROM funcionarios WHERE sexo = 'Feminino' AND departamento = 'Jardim'; 


SELECT idFuncionario, nome, sexo, departamento 
FROM funcionarios 
WHERE sexo = 'Masculino' 
OR departamento = 'Jardim';
