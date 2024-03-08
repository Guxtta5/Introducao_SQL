CREATE DATABASE db_farmacia_bvem_estar;
USE db_farmacia_bvem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
maquiagem VARCHAR (100),
capilar VARCHAR (100),
medicamento_infantil VARCHAR (100),
medicamento_adulto VARCHAR (100),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;


INSERT INTO tb_categorias (maquiagem)
VALUES("isso é uma maquiagem para deixar você mais que da do que já é");
INSERT INTO tb_categorias (capilar)
VALUES("isso é um produto para você cuidar de seus cabelos");
INSERT INTO tb_categorias (medicamento_infantil)
VALUES("esse medicamentos pode ser dado para sua criança");
INSERT INTO tb_categorias (medicamento_adulto)
VALUES("Antes de consumir, leia a bula!!!");

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
produto VARCHAR (100)NOT NULL,
valor DECIMAL (6.2)NOT NULL,
quantidade_de_caixas BIGINT, 
quantidade_de_comprimidos BIGINT, 
id_produtos BIGINT,
FOREIGN KEY (id_produtos) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (produto, valor, quantidade_de_caixas, quantidade_de_comprimidos, id_produtos)
VALUES("Dipirona", 15.0, 1, 25, 4),
("Paracetamol", 10.0, 1, 30, 4),
("Batom", 4.0, 1, 1, 1),
("Base", 20.0, 1, 1, 1),
("Deliniador", 30.0, 1, 1, 1),
("Minisulida", 25.0, 1, 30, 4),
("Dorflex", 35.0, 2, 60, 4),
("Shampoo", 30.0, 2, 2, 2),
("Dramamine", 35.0, 2, 2, 3),
("Luftal infantil", 45.0, 1, 1, 3),
("Vibral", 68.0, 2, 2, 3),
("Creme", 10.0, 1, 1, 2),
("Condicionador", 30.0, 2, 2, 2);

SELECT * FROM tb_produtos WHERE valor > 50;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
SELECT * FROM tb_produtos WHERE produto LIKE "%C%";

SELECT produto, valor, tb_categorias.id
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produtos = tb_categorias.id;

SELECT produto, valor, tb_categorias.id
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_produtos = tb_categorias.id
WHERE tb_categorias.id = "2";