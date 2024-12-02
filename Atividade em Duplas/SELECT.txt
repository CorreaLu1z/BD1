-- 1. Listar todos os produtos e suas categorias.
CREATE VIEW view_produtos AS
SELECT p.idProduto, p.nome AS nomeProduto, p.precoVenda, p.qtdEstoque, c.nomeCategoria
FROM Produto p
JOIN categoria c ON p.idCategoria = c.idCategoria;

-- 2. Listar todos os pedidos e os itens de cada pedido, incluindo o nome do produto
-- solicitado.
CREATE VIEW view_pedidos AS 
SELECT p.idPedido AS NumeroPedido, pr.nome AS Produto, pf.qtdProduto AS Quantidade
FROM Pedido p
LEFT JOIN Pedido_Final pf ON p.idPedido = pf.idPedido
LEFT JOIN Produto pr ON pf.idProduto = pr.idProduto
ORDER BY p.idPedido;


-- 3. Listar todos os fornecedores e os produtos que fornecem, mesmo que um
-- fornecedor ainda não tenha produtos cadastrados.
CREATE VIEW view_fornecedores AS 
SELECT f.nome AS Fornecedor, p.nome AS produto
FROM Fornecedores f
LEFT JOIN produto p ON p.idFornecedor = f.idFornecedor
ORDER BY f.idFornecedor;

SELECT * FROM view_produtos;
SELECT * FROM view_pedidos;
SELECT * FROM view_fornecedores;






