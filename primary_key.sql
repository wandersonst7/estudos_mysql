# A restrição PRIMARY KEY identifica exclusivamente cada registro em uma tabela.
# As chaves primárias devem conter valores UNIQUE e não podem conter valores NULL.
# Uma tabela pode ter apenas UMA chave primária; 
# e na tabela, essa chave primária pode consistir 
# em colunas (campos) únicas ou múltiplas.

# Definindo PRIMARY KEY na criação da tabela
CREATE TABLE transactions(
	id INT PRIMARY KEY, 
    amount DECIMAL(5,2)
);

# Caso não defina na criação da tabela
ALTER TABLE transactions
ADD CONSTRAINT
PRIMARY KEY(id);

# Deve dar erro!
INSERT INTO transactions VALUES (1, 10.99);
INSERT INTO transactions VALUES (1, 5.99);

SELECT * FROM transactions;
