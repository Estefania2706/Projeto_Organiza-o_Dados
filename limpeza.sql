-- PROJETO: ORGANIZAÇÃO DE DADOS
-- Ficheiro para o GitHub: limpeza.sql
-- HORA 5: QUALIDADE E LIMPEZA DE DADOS

-- 1. Regras de Validação (Constraints)
ALTER TABLE Utilizadores ADD CONSTRAINT email_valido CHECK (email LIKE '%@%.%');
ALTER TABLE Produtos ADD CONSTRAINT preco_positivo CHECK (preco >= 0);

-- 2. Comandos de Correção e Limpeza
UPDATE Utilizadores SET email = 'novo.joao@email.com' WHERE nome = 'João Silva';
DELETE FROM Vendas WHERE quantidade = 0;
