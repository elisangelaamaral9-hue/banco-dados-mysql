USE db_curso_da_minha_vida;

-- Tabelas criadas na Models

-- Inserindo informações na tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos relacionados a desenvolvimento de software'),
('Design', 'Cursos de design gráfico e UX/UI'),
('Marketing', 'Cursos sobre estratégias e técnicas de marketing'),
('Negócios', 'Gestão, empreendedorismo e liderança'),
('Idiomas', 'Cursos de línguas');

-- Inserindo informações na tb_cursos
INSERT INTO tb_cursos (nome, instrutor, carga_horaria, valor, tb_categorias_id) VALUES
('Java Completo do Zero', 'Carlos Silva', 40, 800, 1),
('Python para Iniciantes', 'Mariana Rocha', 30, 600, 1),
('UX/UI Design Essentials', 'Ana Costa', 25, 900, 2),
('Photoshop Avançado', 'Pedro Martins', 35, 500, 2),
('Marketing Digital Master', 'João Almeida', 50, 1000, 3),
('Gestão de Projetos', 'Ricardo Mendes', 60, 750, 4),
('Inglês Intermediário', 'Laura Santos', 45, 650, 5),
('Espanhol para Viagens', 'Paula Ribeiro', 20, 300, 5);

-- Retornando valor maior que 500
SELECT * FROM tb_cursos
WHERE valor > 500;

-- Retornando cursos com valor entre 600 e 1000
SELECT * FROM tb_cursos
WHERE valor BETWEEN 600 AND 1000;

-- Retornando cursos que possuem a letra 'J' no nome
SELECT * FROM tb_cursos
WHERE nome LIKE '%J%';

-- Unindo cursos e categorias
SELECT 
    c.id,
    c.nome AS curso,
    c.instrutor,
    c.carga_horaria,
    c.valor,
    cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.tb_categorias_id = cat.id;

-- Busca direcionada
SELECT 
    c.id,
    c.nome AS curso,
    c.instrutor,
    c.valor,
    cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat
ON c.tb_categorias_id = cat.id
WHERE cat.nome = 'Programação';
