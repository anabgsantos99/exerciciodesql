-- Criar banco de dados Serasa
 
CREATE DATABASE serasa;
 
-- Criar tabela empregado
 
CREATE TABLE empregado(
    codigo INT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    depto INT(4) NOT NULL,
    salario DECIMAL(6,2)
);
 
-- Atribuir valores a tabela empregado
 
INSERT INTO empregado(codigo,nome,depto,salario)
VALUES
(43500,"Ana da Silva",9411,5200),
(43501,"Vitoria Beatriz",9411,3400),
(43502,"Pedro José",9412,2600),
(43503,"Amary Manoel",9412,8400),
(43504,"Carlos Silva",9412,5600),
(43505,"Vitorio Cardoso",9413,2300),
(43506,"Carlos Ives Souza",9413,3380),
(43507,"Victor Silva",9413,4500),
(43508,"Saulo Monteiro",9413,6800);
 
-- Alterar departamento de todos
 
UPDATE empregado
SET depto = 9414
 
-- Alterar departamento três primeiros registros
 
UPDATE empregado
SET depto = 9415
WHERE codigo BETWEEN 43500 AND 43502;
 
-- Alterar departamento para o valor original
 
UPDATE empregado
SET depto = 9411
WHERE codigo BETWEEN 43500 AND 43501;
 
UPDATE empregado
SET depto = 9412
WHERE codigo BETWEEN 43502 AND 43504;
 
UPDATE empregado
SET depto = 9413
WHERE codigo BETWEEN 43505 AND 43508;
 
-- Select do banco de dados
 
SELECT * FROM empregado
 
-- Select da coluna nome onde o salário for igual a R$ 6800,00
 
SELECT nome FROM empregado
WHERE salario = 6800.00;
 
-- Select da coluna Codigo e nome onde o salário for igual a R$ 5200,00
 
SELECT codigo, nome FROM empregado
WHERE salario = 5200.00;
 
-- Select da coluna DEPTO onde o salário for maior que R$ 3000,00 e menor que R$ 5.500,00
 
SELECT depto FROM empregado
WHERE salario > 3000.00 AND salario < 5500.00;
 
-- Select da coluna Codigo e DEPTO onde o salário estiver entre R$ 2600,00 e R$ 3380,00
 
SELECT codigo, depto FROM empregado
WHERE salario BETWEEN 2600.00 AND 3380.00;
 
-- Select da coluna nome onde o DEPTO for 9411 AND 9412
 
SELECT nome FROM empregado
WHERE depto BETWEEN 9411 AND 9412;
 
-- Select de DEPTO, Salario e Nome onde o Código for 43500 OR 43502
 
SELECT depto, salario, nome FROM empregado
WHERE codigo = 43500 OR codigo = 43502;
 
--  Select SUM de todos os salários da tabela
 
SELECT SUM(salario) AS soma_salario FROM empregado;
 
 