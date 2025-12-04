-- Criação do banco de dados
CREATE DATABASE db_rh;
USE db_rh;

-- Criação da tabela colaboradores
CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(100),
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_contratacao DATE
);

-- Inserção dos 5 registros
INSERT INTO colaboradores (nome, cargo, salario, departamento, data_contratacao)
VALUES
('Ana Souza', 'Analista de RH', 2600.00, 'RH', '2023-01-10'),
('Carlos Lima', 'Desenvolvedor', 4500.00, 'TI', '2022-11-01'),
('Julia Mendes', 'Auxiliar Administrativo', 1800.00, 'Administrativo', '2024-02-15'),
('Pedro Santos', 'Designer', 2100.00, 'Marketing', '2023-06-20'),
('Marina Alves', 'Recepcionista', 1700.00, 'Atendimento', '2024-05-01');

-- SELECT salário maior que 2000
SELECT * FROM colaboradores
WHERE salario > 2000;

-- SELECT salário menor que 2000
SELECT * FROM colaboradores
WHERE salario < 2000;

-- Atualização de um registro (exemplo: aumentar salário da Marina Alves)
UPDATE colaboradores
SET salario = 1900.00
WHERE nome = 'Marina Alves';
