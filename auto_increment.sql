# O incremento automático permite que um número exclusivo 
# seja gerado automaticamente quando um novo registro é inserido em uma tabela.
# Freqüentemente, este é o campo de chave primária que 
# gostaríamos que fosse criado automaticamente sempre que um novo registro fosse inserido.

CREATE TABLE transactions(
	transaction_id INT PRIMARY KEY AUTO_INCREMENT,
    amount DECIMAL(5,2)
);

INSERT INTO transactions (amount) VALUES (5.9), (4.4), (3.3);

SELECT * FROM transactions;

DROP TABLE transactions;