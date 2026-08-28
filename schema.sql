-- Construir a Tabela de Utilizadores
CREATE TABLE Utilizadores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_registo TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Construir a Tabela de Produtos
CREATE TABLE Produtos (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0
);
