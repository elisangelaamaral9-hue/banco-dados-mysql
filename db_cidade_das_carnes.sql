USE db_cidade_das_carnes;

-- Tabela gerada no Models

-- Inseridos informações tb_categorias
INSERT INTO tb_categorias (tipo, descricao) VALUES
("Bovinos", "Carne Vermelha"),
("Aves", "Frango e derivados"),
("Suínos", "Carne Suína"),
("Embutidos", "Salsichas e linguiças"),
("Outros", "Produtos diversos"),
("Peixes", "Carne Branca");

-- Inserindo informações na tb_produtos
INSERT INTO tb_produtos (nome, quantidade, preco, fabricante, vencimento, tb_categorias_id) VALUES
("Picanha", 15, 90, "Friboi", "2025-06-10", 1),
("Alcatra", 25, 60, "Friboi", "2025-06-15", 1),
("Coxa de Frango", 40, 19, "Seara", "2025-05-20", 2),
("Peito de Frango", 30, 22, "Seara", "2025-05-18", 2),
("Costelinha Suína", 20, 40, "Sadia", "2025-05-25", 3),
("Linguiça Toscana", 35, 26, "Aurora", "2025-07-01", 4);

-- Busca de produtos com preço maior que R$ 50,00
SELECT * FROM tb_produtos
WHERE preco > 50;

-- Busca de produtos com preço entre R$ 50,00 e R$ 150,00
SELECT * FROM tb_produtos
WHERE preco BETWEEN 50 AND 150;

-- Busca de produtos com letra "C"
SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

-- Relacionando tabelas
SELECT p.id, p.nome, p.preco, p.fabricante, c.tipo, c.descricao
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
ON p.tb_categorias_id = c.id;

-- Filtrando categoria
SELECT p.id, p.nome, p.preco, c.tipo
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
ON p.tb_categorias_id = c.id
WHERE c.tipo = "Aves";
