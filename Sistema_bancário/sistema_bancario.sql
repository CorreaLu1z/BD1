create database sistema_bancario;
use sistema_bancario;

create table agencia (
IdAgencia int(11) not null auto_increment,
nome_agencia varchar(45) not null,
cidade_agencia varchar(45) not null,
ativos_agencia int not null,
primary key(IdAgencia)
);

create table cliente(
IdCliente int(11) not null auto_increment,
nome_Cliente varchar(45) not null,
Cidade_cliente varchar(45) not null,
endereco_cliente varchar(100)  not null,
primary key( IdCliente )
);

 create table conta(
IdConta int not null auto_increment,
saldo_conta decimal(10,2) not null,
IdAgencia int not null,
IDCliente int not null,
primary key(IdConta ),
foreign key(IdAgencia) references agencia( IdAgencia),
foreign key(IDCliente) references cliente(IdCliente)) ;

create table deposito(
idCliente int not null,
idConta int not null,
valor decimal(10,2),
primary key( idCliente,idConta),
foreign key(idCliente) references cliente(IdCliente),
foreign key(idConta) references conta(IdConta));


create table emprestimo(
idemprestimo int not null auto_increment,
idCliente int not null ,
valor_inicial decimal(10,2) not null,
saldo_emprestimo decimal(10,2) not null,
primary key( idemprestimo),
foreign key(idCliente) references cliente(IdCliente));

create table Pagamento(
idPagamento int not null auto_increment,
idemprestimo int not null,
valor decimal(10,2) not null,
primary key(idPagamento),
foreign key(idemprestimo) references emprestimo(idemprestimo));

INSERT INTO agencia(nome_agencia, cidade_agencia, ativos_agencia)
VALUES
    ('Vila Nova', 'Blumenau', 1500),
    ('Centro', 'Florianópolis', 2500),
    ('Aeroporto', 'Joinville', 1200);

select * from agencia;  -- mostra informações que estão armazenadas na tabela

desc cliente; -- descreve a tabela

INSERT INTO cliente(nome_Cliente, Cidade_cliente, endereco_cliente)
VALUES
('Mariana', 'Blumenau', 'Rua Vila Nova, 123'),
('Ana', 'Gaspar', 'Rua Cafuné, 456'),
('Pedro', 'Pomerode', 'Rua Boa Vista, 789');

INSERT INTO conta(saldo_conta, IdAgencia, IDCliente)
VALUES
(123.3, 1, 1),
(200.0, 2, 2),
(150.75, 3, 3);

select*
from cliente;
select*
from conta;

INSERT INTO deposito(valor, IdConta, IdCliente)
VALUES
(3.9, 2, 2),
(50.0, 1, 1),
(100.0, 3, 3);

select*
from deposito;

desc emprestimo;

INSERT INTO pagamento(valor, idemprestimo) 
VALUES 
(200, 3),
(300, 5),
(150, 7);

select*
from pagamento;

select * from emprestimo where valor_inicial > "25000" AND saldo_emprestimo <> "1000"; -- Seleciona da tabela emprestimo "where" valor inicial 
																					-- maior que 25 mil e o saldo é diferente de mil.

Select * from emprestimo e INNER JOIN cliente c where e.idCliente = c.idCliente ;  -- Retorna os valores das tabelas concatenados, 
																				-- pois a tabela emprestimo não tem nome de cliente, apenas ID,
                                                                                -- dessa forma aparecem os nomes

Select * from pagamento p LEFT JOIN emprestimo e ON p.idemprestimo = e.idemprestimo; -- A TABELA DECLARADA PRIMEIRO

SELECT * 
FROM pagamento p 
LEFT JOIN emprestimo e ON p.idemprestimo = e.idemprestimo

UNION

SELECT * 
FROM pagamento p 
RIGHT JOIN emprestimo e ON p.idemprestimo = e.idemprestimo;   -- PARA REALIZAR A UNIÃO DE DUAS TABELAS E MOSTRAR TODOS OS VALORES NA TELA
