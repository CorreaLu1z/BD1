-- Criação do banco de dados
CREATE DATABASE eventos_db;
USE eventos_db;

-- Tabela de Cliente
CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    telefone INT,
    cpf VARCHAR(11)
);

-- Tabela de Fornecedor
CREATE TABLE Fornecedor (
    idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    tipoServico VARCHAR(100),
    telefone INT    
);

-- Tabela de Evento
CREATE TABLE Evento (
    idEvento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    dataEvento DATE,
    localEvento VARCHAR(45),
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)   
);

-- Tabela de Servico
CREATE TABLE Servico (
    idServico INT AUTO_INCREMENT PRIMARY KEY,
    valor INT,
    dataContratacao DATE,
    idFornecedor INT,
    idEvento INT,
    FOREIGN KEY (idEvento) REFERENCES Evento(idEvento),   
	FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)   
);

-- Tabela de Pagamento
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idServico INT,
    dataPagamento DATE,
    valorPago INT,
    FOREIGN KEY (idServico) REFERENCES Servico(idServico)
);


