-- 1. Limpar estruturas antigas se existirem para evitar conflitos
DROP VIEW IF EXISTS Relatorio_Vendas_Mensal;
DROP TABLE IF EXISTS Vendas_Hora20;
DROP TABLE IF EXISTS Produtos_Hora20;

-- 2. Criar a nova tabela de Produtos com a coluna Stock
CREATE TABLE Produtos_Hora20 (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    stock INT
);

-- 3. Criar a nova tabela de Vendas
CREATE TABLE Vendas_Hora20 (
    id SERIAL PRIMARY KEY,
    produto_id INT REFERENCES Produtos_Hora20(id),
    quantidade INT,
    preco DECIMAL(10,2),
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Inserir dados de teste (Produtos com stocks normais e críticos)
INSERT INTO Produtos_Hora20 (nome, preco, stock) VALUES 
('Livro A - Gestão', 15.00, 20),
('Livro B - SQL Avançado', 25.00, 3),   -- Stock Crítico (< 5)
('Livro C - Liderança', 19.90, 2);     -- Stock Crítico (< 5)

-- Inserir dados de vendas simuladas (Mês Atual e Mês Passado)
INSERT INTO Vendas_Hora20 (produto_id, quantidade, preco, data) VALUES 
(1, 2, 30.00, NOW()),
(2, 1, 25.00, NOW()),
(3, 3, 59.70, NOW() - INTERVAL '1 month');

-- 5. CRIAR A VIEW MÁGICA (O Dashboard do Diretor)
CREATE OR REPLACE VIEW Relatorio_Vendas_Mensal AS 
SELECT  
    DATE_TRUNC('month', data) AS mes_faturacao, 
    COUNT(*) AS total_vendas, 
    SUM(preco) AS receita_total 
FROM Vendas_Hora20 
GROUP BY DATE_TRUNC('month', data) 
ORDER BY mes_faturacao DESC;

-- 6. CONSULTAS DO DASHBOARD (Geraram as evidências do exercício)

-- Consulta A: Ver o Dashboard Mensal (A View)
SELECT * FROM Relatorio_Vendas_Mensal;

-- Consulta B: O Semáforo de Alerta (Stock Crítico)
SELECT nome, stock FROM Produtos_Hora20 WHERE stock < 5;
