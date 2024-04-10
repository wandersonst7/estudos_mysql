# A restrição DEFAULT é usada para definir um valor padrão para uma coluna.
# O valor padrão será adicionado a todos os novos registros, 
# se nenhum outro valor for especificado.

CREATE TABLE users(
	user_id INT,
	email varchar(100),
	name varchar(50),
	job bit DEFAULT 0
);

INSERT INTO users (user_id, email, name) VALUES (1, "wanderson@gmail.com", "wanderson");

# (Bônus) uso de operador lógico AND(&&)
#DELETE FROM users 
#WHERE user_id = 1 && job = 1;

# Caso esqueça de definir na criação da tabela
ALTER TABLE users
ALTER name SET DEFAULT "Desconhecido";

SELECT * FROM users;

# Outro Exemplo
CREATE TABLE transactions(
	transaction_id INT, 
    amount DECIMAL(5,2), 
    transaction_date DATETIME DEFAULT NOW()
);

INSERT INTO transactions (transaction_id, amount)
VALUES (1, 10.99);

SELECT * FROM transactions;
