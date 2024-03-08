CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
casa_tipo_1 VARCHAR (55),
casa_tipo_2 VARCHAR (55),
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (casa_tipo_1)
VALUES("Uma casa/apartamento sem garagem");
INSERT INTO tb_categorias (casa_tipo_2)
VALUES("Uma casa/apartamento com cagarem e ");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (255),
valor DECIMAL (6,2),
quantidade_de_quartos INT,
id_produto BIGINT,
FOREIGN KEY (id_produto) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (produto, valor, quantidade_de_quartos, id_produto)
VALUES ("Casa1", 100.0, 2, 2),
("Apartamento1", 500.0, 2, 2),
("casa2", 50.0, 3, 1),
("Apartamento2", 30.0, 3, 1),
("casa3", 55.0, 4, 2),
("Apartamento3", 300.0, 1, 2),
("casa4", 200.0, 1, 1),
("Apartamento4", 110.0, 4, 1);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT produto, valor, quantidade_de_quartos
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produto = tb_categorias.id;

SELECT produto, valor, quantidade_de_quartos
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produto = tb_categorias.id
WHERE tb_categorias.id;