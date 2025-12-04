-- Tabela criadas pela Model

SELECT * FROM db_pizzaria_legal.tb_pizzas;

-- Iserindo valores para tabela categorias
INSERT INTO tb_categorias (tipo, tamanho) VALUES
('Doce', 'Grande'),
('Doce', 'Média'),
('Doce', 'Pequena'),
('Salgada', 'Pequena'),
('Salgada', 'Média'),
('Salgada', 'Grande');

-- Inserindo valores para tabela pizzas

INSERT INTO tb_pizzas (sabor, borda, acompanhamento, extra, preco, tb_categorias_id) VALUES
('4 Queijos', 'Catupiry', 'Suco de Laranja', 'Mais um queijo', 60.00, 1),
('Baiana', 'Sem', 'Coca-Cola', 'Cebola', 48.00, 1),
('Calabresa', 'Requeijão', 'Suco de Uva', 'Cebola', 50.00, 1),
('Portuguesa', 'Sem', 'Vinho', 'Pimentão', 85.00, 1),
('Carne Seca', 'Requeijão', 'Café', 'Azeitona', 100.00, 1),
('Brigadeiro', 'Chocolate', 'Sorvete', 'M&Ms', 45.00, 1);

-- Localizando pizza no valor maior que 45
SELECT * FROM tb_pizzas
WHERE preco > 45.00;

-- Localizando pizzas com valores entre 50 e 100
SELECT * FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

-- Buscando pizza com letra M
SELECT * FROM tb_pizzas
WHERE sabor LIKE '%M%';

-- Junçaõ de informações das tabelas 
SELECT p.id, p.sabor, p.borda, p.acompanhamento, p.extra, p.preco,
       c.tipo, c.tamanho
FROM tb_pizzas p INNER JOIN tb_categorias c ON p.tb_categorias_id = c.id;

-- Buscando por palavra doce
SELECT p.id, p.sabor, p.preco, c.tipo, c.tamanho
FROM tb_pizzas p INNER JOIN tb_categorias c ON p.tb_categorias_id = c.id WHERE c.tipo = 'Doce';



