-- PROJETO: ORGANIZAÇÃO DE DADOS
-- Ficheiro para o GitHub: performance.sql
-- HORA 7: OTIMIZAÇÃO E PERFORMANCE (ÍNDICES)

-- Passo 3: Criar um Índice (O Atalho)
CREATE INDEX idx_utilizador_nome ON Utilizadores(nome);

-- Passo 4: O Comando de Raio-X (Ver o plano de execução)
EXPLAIN SELECT * FROM Utilizadores WHERE nome = 'João Silva';
