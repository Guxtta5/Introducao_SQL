CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR (55) NOT NULL,
armas VARCHAR (55) NOT NULL,
descricao VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);



CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (55) NOT NULL,
dimensao VARCHAR (70) NOT NULL,
idade BIGINT,
poder_ataque INT,
poder_defesa INT,
id_classe BIGINT,
FOREIGN KEY (id_classe) REFERENCES tb_classes (id),
PRIMARY KEY (id)
);

-- Inserção de registros das classes
INSERT INTO tb_classes (classe, armas, descricao)
VALUES("Espadachim", "Espadas", "pode-se utilizar uma ou mais espadas para combate..."),
("Marionetista", "Marionete", "Cuidado!! você pode se tornar uma de suas armas..."),
("Maestro", "Batuta", "nem sempre a musica vai te trazer um bem-estar..."),
("Alquimista", "Luva Alquímica", "chamam ele de Edward Elric por que será que chamam ele assim?"),
("Caçador de Sonhos", "Lira do Pesadelo", "As vezes você pode estar sonhado acordado então tome cuidado...");

-- Inserção de registros dos personagens
INSERT INTO tb_personagens (nome, dimensao, idade, poder_ataque, poder_defesa, id_classe)
VALUES ("Sieghart", "Ernas", 500, 300000, 200000, 1),
("Nyx", "Etherium", 19, 1500, 1000, 2),
("Lyra", "Abismo Astral", 18, 1588, 928, 4),
("Zephyr", "Primordial", 25, 25600, 24955, 3),
("Luxeon", "Reino dos sonhos", 15, 2560, 2597, 5),
("Orion", "Névoa Sombria", 17, 1982, 1562, 3),
("Lewy", "Vazio", 69, 25698, 25681, 4),
("Cyan", "Chaos", 09, 560, 589, 2);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT nome, dimensao, idade, tb_classes.classe 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id;

SELECT nome, dimensao, idade, tb_classes.classe 
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.classe = "Caçador de Sonhos";