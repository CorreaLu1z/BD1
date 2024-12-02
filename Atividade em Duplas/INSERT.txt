-- Inserindo categorias
INSERT INTO Categoria (nomeCategoria) VALUES 
('Bebidas'),
('Sobremesas'),
('Prato Principal');

-- Inserindo fornecedores
INSERT INTO Fornecedores (nome, telefone, email, cnpj, endereco) VALUES 
('Fornecedor A', 123456789, 'fornecedora@exemplo.com', 12345678000123, 'Rua A, 123, Cidade X'),
('Fornecedor B', 987654321, 'fornecedorb@exemplo.com', 98765432000145, 'Avenida B, 456, Cidade Y'),
('Fornecedor C', 112233445, 'fornecedorc@exemplo.com', 11223344000178, 'Travessa C, 789, Cidade Z'),
('Fornecedor D', 995433445, 'fornecedord@exemplo.com', 55223454870178, 'Travessa D, 1011, Cidade A');

-- Inserindo produtos
INSERT INTO Produto (idCategoria, idFornecedor, nome, precoVenda, qtdEstoque) VALUES 
(1, 1, 'Refrigerante', 5, 100),
(1, 2, 'Suco de Laranja', 6, 50),
(1, 3, 'Água Mineral', 2, 200),
(2, 1, 'Bolo de Chocolate', 10, 30),
(2, 2, 'Pudim de Leite', 8, 40),
(2, 3, 'Mousse de Maracujá', 12, 25),
(3, 1, 'Feijoada', 35, 15),
(3, 2, 'Bife de Chorizo', 40, 10),
(3, 3, 'Frango Assado', 25, 20),
(3, 1, 'Pizza de Calabresa', 30, 30);

-- Inserindo pedidos
INSERT INTO Pedido (nomeCliente, nomeFuncionario, dataPedido) VALUES 
('João', 'Carlos', '2024-12-01'),
('Maria', 'Ana', '2024-12-02'),
('Pedro', 'Lucas', '2024-12-03'),
('José', 'Clara', '2024-12-04'),
('Luana', 'Rafael', '2024-12-05');

-- Inserindo itens nos pedidos (Pedido_Final)
INSERT INTO Pedido_Final (idPedido, idProduto, qtdProduto) VALUES 
(1, 1, 2),
(1, 4, 1),
(1, 7, 3),
(2, 2, 1),
(2, 5, 2),
(2, 8, 1),
(3, 3, 4),
(3, 6, 2),
(3, 9, 1),
(4, 10, 2),
(4, 2, 1),
(4, 4, 1),
(5, 7, 2),
(5, 3, 5),
(5, 6, 3),
(1, 8, 1),
(2, 9, 1),
(3, 5, 1),
(4, 1, 3),
(5, 10, 2);
