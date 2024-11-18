CREATE TABLE agencia(

id_agencia INT(11) NOT NULL AUTO_INCREMENT,
nome_agencia VARCHAR(45) NOT NULL,
cidade_agencia VARCHAR(45) NOT NULL,
ativos_agencia INT NOT NULL,

PRIMARY KEY (id_agencia)
);

CREATE TABLE CONTA(
id_conta INT NOT NULL AUTO_INCREMENT,
saldo_conta DECIMAL(10, 2) NOT NULL,
id_agencia INT NOT NULL,
id_cliente INT NOT NULL,

PRIMARY KEY(id_conta),
FOREIGN KEY(id_agencia) REFERENCES agencia(id_agencia),
FOREIGN KEY(id_agencia) REFERENCES cliente(id_cliente)
);

CREATE TABLE cliente(
id_cliente INT NOT NULL AUTO_INCREMENT,
nome_cliente VARCHAR(45) NOT NULL,
cidade_cliente VARCHAR(45) NOT NULL,
endereco_cliente VARCHAR(45) NOT NULL,
PRIMARY KEY (id_cliente)
);

CREATE TABLE deposito(
id_deposito INT NOT NULL AUTO_INCREMENT,
id_cliente INT(11) NOT NULL,
id_conta INT(11) NOT NULL,
valor DECIMAL(10, 2),
PRIMARY KEY (id_deposito),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
FOREIGN KEY (id_conta) REFERENCES conta(id_conta)
);

CREATE TABLE emprestimo(
id_emprestimo INT(11) NOT NULL AUTO_INCREMENT,
id_cliente INT(11) NOT NULL,
valor_inicial DECIMAL(10,2) NOT NULL,
saldo DECIMAL(10,2) NOT NULL,

PRIMARY KEY (id_emprestimo),
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE pagamento(
id_pagamento INT(11) NOT NULL AUTO_INCREMENT,
id_emprestimo INT(11) NOT NULL,
valor DECIMAL(10, 2),

PRIMARY KEY (id_pagamento),
FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);


