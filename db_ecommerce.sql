-- Criar o banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criar tabela de produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT,
    fornecedor VARCHAR(100)
);

-- Inserir registros conforme a tabela da imagem
INSERT INTO produtos (id, nome, categoria, preco, estoque, fornecedor) VALUES
(1, 'Notebook Lenovo', 'Informática', 3200.00, 15, 'Lenovo Brasil'),
(2, 'Mouse Gamer', 'Periféricos', 120.00, 50, 'Logitech'),
(3, 'Cadeira Gamer', 'Móveis', 900.00, 12, 'ThunderX3'),
(4, 'Fone Bluetooth', 'Áudio', 250.00, 40, 'JBL'),
(5, 'Monitor LG 24pol', 'Informática', 700.00, 20, 'LG'),
(6, 'Teclado Mecânico', 'Periféricos', 450.00, 30, 'Redragon'),
(7, 'Smarthpone Samsung A54', 'Celulares', 2100.00, 25, 'Samsung');

-- SELECT dos produtos com valor MAIOR que 500
SELECT * FROM produtos
WHERE preco > 500;

-- SELECT dos produtos com valor MENOR que 500
SELECT * FROM produtos
WHERE preco < 500;

-- Atualizar um registro (exemplo: alterar o preço do Mouse Gamer)
UPDATE produtos
SET preco = 150.00
WHERE id = 2;
