CREATE DATABASE canalti;

USE canalti;

CREATE TABLE `canalti`.`livro`(
`id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
`nome` VARCHAR(300) NOT NULL
);

INSERT INTO livro (nome) VALUES ('Code Clean');
INSERT INTO livro (nome) VALUES ('Engenharia de Software');
INSERT INTO livro (nome) VALUES ('Domain Driven Design');
INSERT INTO livro (nome) VALUES ('Livro teste');