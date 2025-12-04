-- 1. Criar o banco de dados
CREATE DATABASE escola;
USE escola;

-- 2. Criar a tabela estudantes
CREATE TABLE estudantes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(20),
    nota DECIMAL(3,1),
    turno VARCHAR(20)
);

-- 3. Inserir no mínimo 8 registros
INSERT INTO estudantes (id, nome, idade, serie, nota, turno) VALUES
(1, 'Lucas Pereira', 14, '8º ano', 8.5, 'Manhã'),
(2, 'Ana Júlia', 13, '7º ano', 7.2, 'Tarde'),
(3, 'Miguel Rocha', 15, '9º ano', 7.5, 'Manhã'),
(4, 'Mariana Lopes', 12, '6º ano', 9.0, 'Tarde'),
(5, 'João Pedro', 13, '7º ano', 5.5, 'Manhã'),
(6, 'Carla Fernandes', 14, '8º ano', 4.8, 'Manhã'),
(7, 'Bruna Martins', 15, '9º ano', 8.0, 'Tarde'),
(8, 'Eduardo Silva', 14, '8º ano', 6.3, 'Tarde');

-- 4. SELECT para estudantes com nota > 7.0
SELECT * FROM estudantes
WHERE nota > 7.0;

-- 5. SELECT para estudantes com nota < 7.0
SELECT * FROM estudantes
WHERE nota < 7.0;

-- 6. Atualização de um registro (exemplo: atualizar nota do id 6)
UPDATE estudantes
SET nota = 7.1
WHERE id = 6;
