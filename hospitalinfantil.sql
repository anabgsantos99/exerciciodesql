CREATE SCHEMA IF NOT EXISTS `hospitalinfantil` DEFAULT CHARACTER SET utf8 ;
USE `hospitalinfantil`;
 
-- -----------------------------------------------------
-- Tabela `hospitalinfantil`.`crianca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalinfantil`.`crianca` (
  `id` INT NOT NULL PRIMARY KEY,
  `nome` VARCHAR(50) NOT NULL,
  `peso` DECIMAL(5, 2) NOT NULL,
  `altura` DECIMAL(3, 2) NOT NULL,
  `datanascimento` DATE NOT NULL
)
 
-- -----------------------------------------------------
-- Tabela `hospitalinfantil`.`mae`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalinfantil`.`mae` (
  `id` INT NOT NULL PRIMARY KEY,
  `datanascimento` DATE NOT NULL,
  `nome` VARCHAR(50) NOT NULL,
  `endereco` VARCHAR(100) NOT NULL,
  `telefone` VARCHAR(15) NOT NULL
)
 
-- -----------------------------------------------------
-- Tabela `hospitalinfantil`.`medico`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalinfantil`.`medico` (
  `id` INT NOT NULL PRIMARY KEY,
  `nome` VARCHAR(50) NOT NULL,
  `especialidade` VARCHAR(100) NOT NULL,
  `crm` INT(6) UNIQUE NOT NULL
)
 
-- -----------------------------------------------------
-- Tabela `hospitalinfantil`.`nascimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospitalinfantil`.`nascimento` (
  `id` INT NOT NULL PRIMARY KEY,
  `medico` INT NOT NULL,
  `idcrianca` INT NOT NULL,
  `idmae` INT NOT NULL
)
 
 
-- -------------------------------------------------------
-- Inserts nas tabelas tb_cliente e tb_treino
-- -------------------------------------------------------
 
INSERT INTO `hospitalinfantil`.`medico`
(`id`, `nome`, `especialidade`, `crm`)
VALUES
(11245, 'Juliana Alves Albuquerque', 'Obstretícia', 1234584),
(11246, 'Pedro da Silva Santos', 'Nutrilogia Pediátrica', 658985),
(11546,"Vinicius Lima de Oliveira", "Neonatologia", 458755),
(11468,"Bruna Paes Chavez", "Obstetrícia", 246585);
 
DELETE FROM `hospitalinfantil`.`medico` WHERE `especialidade` = 'Neonatologia';
 
DELETE FROM medico;
 
DROP TABLE crianca;
DROP TABLE mae;
DROP TABLE medico;
DROP TABLE nascimento;
 
DROP DATABASE hospitalinfantil;
 