USE db_farmacia_bem_estar;
-- Tabela Criadas na Model

-- Inserindo Valores na tabela categorias
INSERT INTO tb_categorias (tipo, valor) VALUES
('Medicamento', 10),
('Medicamento', 8),
('Higiene', 5),
('Cosmético', 12),
('Vitamina', 15);

-- Inserindo Valores na tabela produtos
INSERT INTO tb_produtos (nome, fabricante, descricao, quantidade, tb_categorias_id) VALUES
('Paracetamol 750mg', 'Neo Química', 'Analgésico para dores e febre', 50, 1),
('Ibuprofeno 600mg', 'Medley', 'Anti-inflamatório e analgésico', 30, 1),
('Sabonete Infantil', 'Johnson''s', 'Sabonete suave para bebês', 20, 3),
('Shampoo Anticaspa', 'Clear', 'Controle de caspa', 40, 3),
('Creme Hidratante', 'Nivea', 'Hidratação da pele', 15, 4),
('Vitamina C 1g', 'Sundown', 'Suplemento vitamínico', 25, 5);

-- Busca rodutos com valor maior que R$ 50,00
SELECT * FROM tb_produtos
WHERE quantidade > 50;

-- Busca Produtos com valor entre R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos
WHERE quantidade BETWEEN 5 AND 60;

-- Busca por nome que tenha a letra "C"
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- Relacionando informações da tabela
SELECT p.*, c.tipo, c.valor
FROM tb_produtos p INNER JOIN tb_categorias c ON p.tb_categorias_id = c.id;

-- Buscando pelo tipo cosmetico
SELECT p.*, c.tipo
FROM tb_produtos p INNER JOIN tb_categorias c ON p.tb_categorias_id = c.id WHERE c.tipo = 'Cosmético';