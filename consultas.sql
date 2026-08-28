-- PROJETO: ORGANIZAÇÃO DE DADOS
-- Ficheiro para o GitHub: consultas.sql
-- HORA 4: CONSULTAS E FILTROS

-- Passo 2: O comando "Ver Tudo" (O balanço inicial)
SELECT * FROM Vendas;

-- Passo 3: O comando "Filtro Inteligente" (Apenas quantidade maior que 1)
SELECT id, utilizador_id, produto_id, quantidade  
FROM Vendas  
WHERE quantidade > 1;

-- Passo 4: O "Join" (O superpoder do Engenheiro)
SELECT Vendas.id, Utilizadores.nome, Produtos.titulo, Vendas.quantidade 
FROM Vendas 
JOIN Utilizadores ON Vendas.utilizador_id = Utilizadores.id 
JOIN Produtos ON Vendas.produto_id = Produtos.id;
