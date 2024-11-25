-- 1.Crie o banco de dados `escola`.
CREATE DATABASE IF NOT EXISTS escola;  -- Cria database escola, se não existir;

-- 2. Use o banco de dados `escola`.
USE escola; -- Informa para utilizar a database criada;

-- 3. Crie a tabela `alunos` com os campos especificados.
-- `id` (chave primária e autoincremento), `nome` (texto), `idade` (inteiro) e `email` (texto).
CREATE TABLE IF NOT EXISTS alunos (
idAluno INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
idade int,
email VARCHAR(100)
);
-- 4. Insira os seguintes registros na tabela `alunos`:
	-- Nome: "João", Idade: 25, Email: "joao@example.com"
	-- Nome: "Maria", Idade: 20, Email: "maria@example.com"
	-- Nome: "Pedro", Idade: 22, Email: "pedro@example.com"	
	-- Nome: "Ana", Idade: 19, Email: "ana@example.com"	
	-- Nome: "Luiz", Idade: 23, Email: "luiz@example.com"
INSERT INTO alunos (nome, idade, email) VALUES
("João", 25, "joao@example.com"),
("Maria", 20, "maria@example.com"),
("Pedro", 22, "pedro@example.com"),
("Ana", 19, "ana@example.com"),
("Luiz", 23, "luiz@example.com");

-- 1. Selecione todos os registros da tabela `alunos`.
SELECT * FROM alunos;

-- 2. Selecione o nome e o e-mail dos alunos que tenham mais de 18 anos.
SELECT nome, email FROM alunos where idade > 18;

-- 3. Insira um novo aluno na tabela `alunos`. Os dados do novo aluno são: nome = "Maria", idade= 20, e-mail = "maria@example.com".
INSERT INTO alunos (nome, idade, email) VALUES ("Mariazinha", 20, "mariazinha@example.com");

-- 5. Atualize a idade do aluno com o nome "João" para 25 anos.
SET SQL_SAFE_UPDATES = 0;
UPDATE alunos SET idade = 25 WHERE nome = "João";
SET SQL_SAFE_UPDATES = 1;

-- 6.Remova o aluno com o e-mail "pedro@example.com" da tabela `alunos`.
SET SQL_SAFE_UPDATES = 0;
DELETE FROM alunos WHERE email = "pedro@example.com";
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM alunos;

 -- 7. Selecione todos os alunos ordenados por idade de forma descendente (do mais velho para o mais novo).
SELECT * FROM alunos ORDER BY idade DESC;

-- 8. Selecione o nome e a idade dos alunos que tenham entre 20 e 30 anos
SELECT nome, idade FROM alunos WHERE idade >= 20 AND idade <= 30;
SELECT nome, idade FROM alunos WHERE idade BETWEEN 20 AND 30;

-- 9.Conte quantos alunos estão na tabela. 
SELECT COUNT(*) AS total_alunos FROM alunos;

-- 10. Selecione o aluno mais velho.
SELECT * FROM alunos ORDER BY idade DESC LIMIT 1;

-- 11.Selecione o nome e a idade de todos os alunos que possuem um e-mail que termina com "@example.com".
SELECT nome, idade FROM alunos WHERE email LIKE '%@example.com';
