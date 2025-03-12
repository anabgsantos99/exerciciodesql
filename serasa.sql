CREATE DATABASE serasa;
 
CREATE TABLE empregado(
    codigo INT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    depto INT(4) NOT NULL,
    salario DECIMAL(6,2)
);
 
INSERT INTO empregado(codigo,nome,depto,salario)
VALUES
(43500,"Ana da Silva",9411,5200),
(43501,"Vitoria Beatriz",9411,3400),
(43502,"Pedro José",9412,2600),
(43503,"Amary Manoel",9412,8400),
(43504,"Carlos Silva",9412,5600),
(43505,"Vitotio Cardoso",9413,2300),
(43506,"Carlos Ives Souza",9413,3380),
(43507,"Victor Silva",9413,4500),
(43508,"Saulo Monteiro",9413,6800);
 