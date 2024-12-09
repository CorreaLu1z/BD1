-- 1. Listar todos os eventos e seus respectivos clientes
SELECT e.nome AS NomeEvento, e.dataEvento, e.localEvento, c.nome AS Cliente
FROM evento e
JOIN cliente c ON e.idCliente = e.idCliente;

-- 2. Listar todos os fornecedores e os serviços que eles forneceram.
SELECT f.nome AS NomeFornecedor, f.tipoServico, e.nome AS NomeEvento, s.valor
FROM servico s
LEFT JOIN fornecedor f ON s.idFornecedor = f.idFornecedor
LEFT JOIN evento e ON s.idEvento = e.idEvento
ORDER BY e.idEvento;

-- 3. Exiba os pagamentos realizados para cada serviço contratado.
SELECT e.nome AS NomeEvento, f.tipoServico, s.valor AS ValorServico, p.valorPago, p.dataPagamento 
FROM servico s
LEFT JOIN fornecedor f ON s.idFornecedor = f.idFornecedor
LEFT JOIN evento e ON s.idEvento = e.idEvento
LEFT JOIN pagamento p ON s.idServico = p.idServico
ORDER BY e.idEvento;


-- 4. Liste os eventos que ainda possuem saldo a pagar
SELECT e.nome AS NomeEvento, s.valor AS ValorServico, p.valorPago, (s.valor-p.valorpago) AS Saldo 
FROM servico s
LEFT JOIN evento e ON s.idEvento = e.idEvento
LEFT JOIN pagamento p ON s.idServico = p.idServico
GROUP BY e.idEvento;

-- 5. Liste todos os eventos que ocorrerão em dezembro de 2024.
SELECT e.nome AS NomeEvento, dataEvento
FROM evento e
WHERE dataEvento between '2024-12-01' AND '2024-12-30';

-- 6. Liste os Fornecedores que forneceram serviços para mais de um evento.
SELECT f.nome AS Fornecedor
FROM fornecedor f
LEFT JOIN servico s ON f.idFornecedor = s.idFornecedor
group by f.idFornecedor
HAVING COUNT(DISTINCT s.idServico) > 1;

-- 7. Encontre os clientes que gastaram mais de R$ 5.000,00 em seus eventos.
SELECT c.nome, sum(s.valor) AS ValorServico
FROM evento e
JOIN cliente c ON e.idCliente = c.idCliente
JOIN servico s ON s.idEvento = e.idEvento
GROUP BY c.idCliente
HAVING sum(s.valor) > 5000;

-- 8. Exiba o total arrecadado pelos fornecedores
SELECT f.nome AS NomeFornecedor, s.valor AS ValorRecebido
from servico s
LEFT JOIN fornecedor f ON f.idFornecedor = s.idFornecedor
group by f.idFornecedor;

-- 9. Liste os eventos que possuem serviços contratados mas ainda não tem pagamentos registrados.
SELECT e.nome AS NomeEvento
FROM evento e 
JOIN servico s ON e.idEvento = s.idEvento
LEFT JOIN pagamento p ON s.idServico = p.idServico
where p.idPagamento is null;

-- 10. Calcule o valor médio gasto por evento.
SELECT SUBSTRING_INDEX(e.nome, ' ', 1) AS Evento, AVG(s.valor) AS ValorMedioEvento
FROM servico s
LEFT JOIN evento e ON e.idEvento = s.idEvento
GROUP BY e.idEvento;




