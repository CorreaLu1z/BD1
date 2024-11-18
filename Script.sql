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



