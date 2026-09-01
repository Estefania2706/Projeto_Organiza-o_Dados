DROP VIEW IF EXISTS Relatorio_Vendas_Mensal;
DROP TABLE IF EXISTS Vendas_Hora20;
DROP TABLE IF EXISTS Produtos_Hora20;

CREATE TABLE Produtos_Hora20 (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    stock INT
);

CREATE TABLE Vendas_Hora20 (
    id SERIAL PRIMARY KEY,
    produto_id INT REFERENCES Produtos_Hora20(id),
    quantidade INT,
    preco DECIMAL(10,2),
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE VIEW Relatorio_Vendas_Mensal AS 
SELECT DATE_TRUNC('month', data) AS mes_faturacao, COUNT(*) AS total_vendas, SUM(preco) AS receita_total 
FROM Vendas_Hora20 GROUP BY DATE_TRUNC('month', data);
