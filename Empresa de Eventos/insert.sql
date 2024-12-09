-- Inserindo Cliente
INSERT INTO cliente (nome, email, telefone, cpf) VALUES 
('Ana Silva', 'ana@gmail.com', 11111111, 11111111111),
('João Oliveira', 'joao@gmail.com', 22222222, 22222222222),
('Maria Santos', 'maria@gmail.com', 33333333, 33333333333);

-- Inserindo Evento
INSERT INTO evento (nome, dataEvento, localEvento, idCliente) VALUES 
('Casamento Ana', '2024-12-20', 'Salão de Festas', 1),
('Formatura João', '2024-12-30', 'Auditório XYZ', 2);

-- Inserindo fornecedor
INSERT INTO fornecedor (nome, tipoServico, telefone) VALUES 
('Buffet Gourmet', 'Buffet', 44444444),
('Banda Tropical', 'Música ao vivo', 55555555),
('Decorações Finas', 'Decoração', 66666666);

-- Inserindo Serviço
INSERT INTO servico (idEvento, idFornecedor, valor, dataContratacao) VALUES
(1, 1, 5000, '2024-11-10'),
(1, 3, 2000, '2024-11-11'),
(2, 2, 3000, '2024-11-15');

INSERT INTO pagamento (idServico, dataPagamento, valorPago) VALUES
(1, '2024-11-20', 2500),
(2, '2024-11-25', 2000),
(3, '2024-12-05', 3000);

SELECT	* FROM pagamento;