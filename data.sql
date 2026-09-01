INSERT INTO Produtos_Hora20 (nome, preco, stock) VALUES 
('Livro A - Gestão', 15.00, 20),
('Livro B - SQL Avançado', 25.00, 3),
('Livro C - Liderança', 19.90, 2);

INSERT INTO Vendas_Hora20 (produto_id, quantidade, preco, data) VALUES 
(1, 2, 30.00, NOW()),
(2, 1, 25.00, NOW());
