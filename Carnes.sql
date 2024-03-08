CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
carne_bovina VARCHAR (255),
carne_branca VARCHAR (255),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (carne_bovina)
VALUES ("Essa carne é de boi/vaca");
INSERT INTO tb_categorias (carne_branca)
VALUES ("Essa carne é aves/peixes");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (100) NOT NULL,
valor DECIMAL,
quantidade BIGINT,
id_produto BIGINT,
FOREIGN KEY (id_produto) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, valor, quantidade, id_produto)
VALUES("Acém", 39.0, 1, 1),
("Ponta de Agulha", 55.0, 1, 1),
("Fraldinha", 65.0, 1, 1),
("coxa/sobrecoxa", 15.0, 1, 2),
("frango", 28.0, 1, 2),
("Tilapia", 50.0, 1, 2),
("Contra Filé", 50.0, 1, 1),
("Traira", 50.0, 1, 2);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT produto, valor, quantidade
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produto = tb_categorias.id;

SELECT produto, valor, quantidade
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produto = tb_categorias.id
WHERE tb_categorias.id = "1";