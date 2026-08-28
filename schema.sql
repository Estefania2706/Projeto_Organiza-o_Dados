-- Construir a Tabela de Utilizadores
CREATE TABLE Utilizadores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    data_registo TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Passo 3: Construir a Tabela de Produtos
CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200),
    preco DECIMAL(10, 2),
    stock INT
);
