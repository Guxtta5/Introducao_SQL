CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
iniciante VARCHAR (255),
intermediario VARCHAR (255),
avancado VARCHAR (255),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(iniciante)
VALUES ("Esse curso é para quem esta comencando!!");
INSERT INTO tb_categorias(intermediario)
VALUES("Esse curso e para quem já tem uma breve noçao do assunto!");
INSERT INTO tb_categorias(avancado)
VALUES("Esse curso e para a pessoa que quer fazer coisa mais complexa");

SELECT * FROM tb_categorias;

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
cursos VARCHAR(255),
valor DECIMAL (6,2),
data_inicio DATE,
data_fim DATE,
id_cursos BIGINT,
FOREIGN KEY (id_cursos) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

INSERT INTO tb_cursos (cursos, valor, data_inicio, data_fim, id_cursos)
VALUES("Ingles", 550.0, "2024-03-08", "2024-06-09", 1),
("Espanhol", 780.0, "2024-03-08", "2024-09-09", 2),
("Italiano", 900.0, "2024-03-08", "2024-10-01", 1),
("Português", 600.0, "2024-03-08", "2025-08-30", 3),
("Braille", 200.0, "2024-03-08", "2025-06-15", 1),
("Frances", 1750.0, "2024-03-08", "2026-06-19", 2),
("Mandarim", 0.0, "2024-03-08", "2024-12-29", 3),
("Hindi", 550.0, "2024-03-08", "2024-09-17", 1);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE cursos LIKE "%J%";

SELECT cursos, valor, data_inicio, data_fim
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_cursos = tb_categorias.id;

SELECT cursos, valor, data_inicio, data_fim
FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_cursos = tb_categorias.id
WHERE tb_categorias.id;