USE db_construindo_vidas;

-- Tabela Criada na Models

-- Inserindo informações tb_categorias
INSERT INTO tb_categorias (tipo, descricao) VALUES
("Elétrica", "Fios, cabos, tomadas e materiais elétricos"),
("Hidráulica", "Conexões, tubos e materiais para encanamento"),
("Ferramentas", "Ferramentas manuais e elétricas"),
("Acabamento", "Tintas, pisos e revestimentos"),
("Estrutura", "Cimento, areia, brita e materiais estruturais");

-- Inserindo informações tb_produtos
INSERT INTO tb_produtos (nome, fabricante, quantidade, preco, tb_categorias_id) VALUES
("Cabo Elétrico 2,5mm", "Tigre", 50, 120, 1),
("Tomada 10A", "Ilumi", 100, 10, 1),
("Tubo PVC 50mm", "Tigre", 30, 45, 2),
("Registro de Pressão", "Deca", 20, 75, 2),
("Furadeira Impacto 700W", "Bosch", 10, 150, 3),
("Chave de Fenda", "Tramontina", 60, 12, 3);

-- Busca por valor maior que R$ 100,00
SELECT * FROM tb_produtos
WHERE preco > 100;

-- Busca valores entre R$ 70,00 e R$ 150,00
SELECT * FROM tb_produtos
WHERE preco BETWEEN 70 AND 150;

-- Busca por nome com a letra "C"
SELECT * FROM tb_produtos
WHERE nome LIKE "%C%";

-- Relacionando tabelas
SELECT p.id, p.nome, p.preco, p.fabricante,
       c.tipo, c.descricao
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
ON p.tb_categorias_id = c.id;

-- Filtrando uma categoria específica
SELECT p.id, p.nome, p.preco, c.tipo
FROM tb_produtos AS p INNER JOIN tb_categorias AS c ON p.tb_categorias_id = c.id WHERE c.tipo = "Hidráulica";
