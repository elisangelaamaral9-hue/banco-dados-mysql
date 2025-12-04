-- Tabelas criadas via Models

USE db_games_generation;

-- Inserindo valores para tabela classe
INSERT INTO tb_classes (nome, nivel) VALUES
('Espadachin', 5),
('Arqueiro', 4),
('Bruxa', 6),
('Amazona', 7),
('Rainha', 8);

-- Inserindo valores para tabela personagens
INSERT INTO tb_personagens 
(ataque, defesa, descricao, fraqueza, poder, classe_id) VALUES
('2000', '10000', 'Guerreiro especializado em combate corpo a corpo.', 'Magia', 2300, 1),
('1500', '5000', 'Arqueira ágil com precisão à longa distância.', 'Golpes corpo a corpo', 1800, 2),
('200', '3000', 'Bruxa poderosa que usa feitiços sombrios.', 'Ataques físicos', 2600, 3),
('3000', '1000', 'Amazona forte e disciplinada na arte do combate.', 'Magias de gelo', 2100, 4),
('1000', '100', 'Rainha que comanda poderes espirituais.', 'Armaduras pesadas', 2400, 5),
('Corte Duolo', 'Armadura Média', 'Espadachin veloz com ataques consecutivos.', 'Magia de fogo', 2000, 1);

-- Busca de poder maior que 2000
SELECT * FROM tb_personagens
WHERE poder > 2000;

-- Busca defesa entre 1000 e 2000
SELECT * FROM tb_personagens
WHERE defesa REGEXP '^[0-9]+$'
  AND CAST(defesa AS UNSIGNED) BETWEEN 1000 AND 2000;
  
-- Conecta informações das tabelas para visualização do usuário
SELECT p.id, p.ataque, p.defesa, p.descricao, p.fraqueza, p.poder, p.tb_classes_id,
       c.nome AS nome, c.nivel
FROM tb_personagens p
INNER JOIN tb_classes c ON p.tb_classes_id = c.id;

-- Busca nas tabelas por "Arqueiro"
SELECT p.id, p.ataque, p.defesa, p.descricao, p.fraqueza, p.poder,p.classes_id,
       c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.tb_classe_id = c.id
WHERE c.nome = 'Arqueiro';
