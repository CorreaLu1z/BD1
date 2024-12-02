-- Criação do banco de dados
CREATE DATABASE restaurante;
USE restaurante;

-- Tabela de Categoria
CREATE TABLE Categoria (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    nomeCategoria VARCHAR(45)    
);

-- Tabela de Fornecedores
CREATE TABLE Fornecedores (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    telefone INT,
    email VARCHAR(45),
    cnpj VARCHAR(14),
    endereco VARCHAR(100)
);

-- Tabela de Produto
CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    idCategoria INT,
    idFornecedor INT,
    nome VARCHAR(45),
    precoVenda int,
    qtdEstoque INT,
	FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedores(idFornecedor)
);

-- Tabela de Pedido
CREATE TABLE Pedido (
    idPedido INT AUTO_INCREMENT PRIMARY KEY,
    nomeCliente VARCHAR(45),
    nomeFuncionario VARCHAR(45),
    dataPedido DATE
);

-- Tabela de Pedido Final
CREATE TABLE Pedido_Final (
    idPedido INT,
    idProduto INT,
	qtdProduto INT,
    PRIMARY KEY (idPedido, idProduto),
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

