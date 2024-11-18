CREATE TABLE hospede(

hospede_id INT(11) NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cpf CHAR(11) NOT NULL,
telefone CHAR(11) NOT NULL,
email VARCHAR(45) NOT NULL,

PRIMARY KEY (hospede_id)
);

CREATE TABLE usuario(
usuario_id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
cargo VARCHAR(45) NOT NULL,
cpf CHAR(11) NOT NULL,
telefone CHAR(11) NOT NULL,
email VARCHAR(45) NOT NULL,

PRIMARY KEY(usuario_id)
);

CREATE TABLE quarto(
quarto_id INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(45) NOT NULL,
disponibilidade BOOLEAN,
valor_diaria DECIMAL(10, 2) NOT NULL,

PRIMARY KEY (quarto_id)
);

CREATE TABLE reserva(
reserva_id	 INT NOT NULL AUTO_INCREMENT,
data_reserva DATE NOT NULL,
data_checkin DATE NOT NULL,
data_checkout DATE NOT NULL,
hospede_id INT(11) NOT NULL,
usuario_id INT(11) NOT NULL,
quarto_id INT(11) NOT NULL,

PRIMARY KEY (reserva_id),
FOREIGN KEY (hospede_id) REFERENCES hospede(hospede_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (quarto_id) REFERENCES quarto(quarto_id)
);

INSERT INTO hospede (nome, cpf, telefone, email) VALUES
('Ana Souza', '12345678901', '11987654321', 'ana.souza@example.com'),
('Carlos Silva', '23456789012', '11876543210', 'carlos.silva@example.com'),
('Joana Almeida', '34567890123', '11765432109', 'joana.almeida@example.com'),
('Marcelo Costa', '45678901234', '11654321098', 'marcelo.costa@example.com'),
('Fernanda Oliveira', '56789012345', '11543210987', 'fernanda.oliveira@example.com'),
('Lucas Pereira', '67890123456', '11432109876', 'lucas.pereira@example.com'),
('Paula Mendes', '78901234567', '11321098765', 'paula.mendes@example.com'),
('Ricardo Gomes', '89012345678', '11210987654', 'ricardo.gomes@example.com'),
('Mariana Santos', '90123456789', '11109876543', 'mariana.santos@example.com'),
('José Ferreira', '01234567890', '11098765432', 'jose.ferreira@example.com');

INSERT INTO usuario (nome, cargo, cpf, telefone, email) VALUES
('Alice Martins', 'Gerente', '11223344556', '11991234567', 'alice.martins@empresa.com'),
('Bruno Rocha', 'Atendente', '22334455667', '11881234567', 'bruno.rocha@empresa.com'),
('Cláudia Costa', 'Recepcionista', '33445566778', '11771234567', 'claudia.costa@empresa.com');

INSERT INTO quarto (tipo, disponibilidade, valor_diaria) VALUES
('Simples', 1, 150.00),
('Duplo', 1, 250.00),
('Luxo', 1, 400.00),
('Presidencial', 0, 800.00),
('Simples', 1, 180.00),
('Duplo', 1, 280.00),
('Luxo', 0, 450.00),
('Simples', 1, 160.00),
('Duplo', 0, 270.00),
('Presidencial', 1, 850.00);

INSERT INTO reserva (data_reserva, data_checkin, data_checkout, hospede_id, usuario_id, quarto_id) VALUES
('2024-11-01', '2024-11-05', '2024-11-10', 1, 1, 1),
('2024-11-02', '2024-11-06', '2024-11-09', 2, 2, 2),
('2024-11-03', '2024-11-07', '2024-11-12', 3, 3, 3),
('2024-11-04', '2024-11-08', '2024-11-13', 4, 1, 4),
('2024-11-05', '2024-11-09', '2024-11-14', 5, 2, 5),
('2024-11-06', '2024-11-10', '2024-11-15', 6, 3, 6),
('2024-11-07', '2024-11-11', '2024-11-16', 7, 1, 7),
('2024-11-08', '2024-11-12', '2024-11-17', 8, 2, 8),
('2024-11-09', '2024-11-13', '2024-11-18', 9, 3, 9),
('2024-11-10', '2024-11-14', '2024-11-19', 10, 1, 10);


