CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
pizza_Salgadas VARCHAR (55),
pizza_Doces VARCHAR (55),
PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (pizza_Salgadas)
VALUES("Essa pizza é Salgada");
INSERT INTO tb_categorias (pizza_doces)
VALUES("Essa pizza é Doce");

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
pizza VARCHAR (55),
valor DECIMAL (6.2) NOT NULL,
quantidade_fatias BIGINT,
Pizzaiolo VARCHAR(20),
ingrediente_principal VARCHAR(50),
id_pizza BIGINT,
FOREIGN KEY (id_pizza) REFERENCES tb_categorias (id),
PRIMARY KEY (id)
);

SELECT * FROM tb_pizzas;


INSERT INTO tb_pizzas(pizza, valor, quantidade_fatias, Pizzaiolo, ingrediente_principal, id_pizza)
VALUES ("Pizza Portuguesa", 45.9, 8, "Thomas", "Presunto", 1),
("Pizza de Calabacon", 35.0, 8, "José", "Calabresa", 1),
("Pizza de Atum 1", 45.0, 8, "Thiago", "Atum", 1),
("Pizza de 4 Queijos", 59.0, 8, "Thomas", "Mussarela", 1),
("Pizza de Calabresa", 40.0, 8, "Thomas", "Calabresa", 1),
("Pizza de Frango 1", 40.0, 8, "Thiago", "frango", 1),
("Pizza de chocolate com Babana", 66.80, 8, "José", "Banana", 2),
("Pizza de chocolate com Morango", 65.0, 8, "Thiago", "Morango", 2),
("Pizza de MM's", 63.40, 8, "José", "MM", 2);

SELECT * FROM tb_pizzas WHERE valor > 45;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE pizza LIKE '%M%';

SELECT pizza, valor, tb_categorias.id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_pizza = tb_categorias.id;

SELECT pizza, valor, tb_categorias.id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_pizza = tb_categorias.id
WHERE tb_categorias.id = "2";