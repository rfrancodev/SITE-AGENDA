
CREATE DATABASE empresa-site;
-- Tabela: funcionarios
CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    situacao VARCHAR(10) CHECK (situacao IN ('ativo', 'inativo')) NOT NULL
);

-- Tabela: clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    endereco VARCHAR(200)
);

-- Tabela: produtos
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
    quantidade_estoque INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    informacao_adicional TEXT
);

-- Tabela: compras
CREATE TABLE compras (
    id SERIAL PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    fornecedor VARCHAR(100) NOT NULL
);

-- Tabela: vendas
CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(100) NOT NULL,
    quantidade_produto INT NOT NULL,
    cliente_id INT REFERENCES clientes(id),
    funcionario_id INT REFERENCES funcionarios(id),
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
