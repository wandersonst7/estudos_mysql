# A restrição FOREIGN KEY é usada para evitar ações 
# que destruiriam links entre tabelas.

# A FOREIGN KEY é um campo (ou coleção de campos) em uma tabela, 
# que se refere a PRIMARY KEY outra tabela.

# A tabela com a chave estrangeira é chamada de tabela filha, 
# e a tabela com a chave primária é chamada de tabela referenciada ou tabela pai.

CREATE TABLE clientes(
	cliente_id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	sobrenome VARCHAR(50)
);

INSERT INTO clientes (nome, sobrenome) VALUES ("Wanderson", "Santos"),
("João", "Ribeiro"), ("Pedro", "Lucas");

CREATE TABLE transacoes(
	transacao_id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(5,2),
    cliente_id INT,
    CONSTRAINT fk_cliente_id FOREIGN KEY(cliente_id) REFERENCES clientes(cliente_id)
);

INSERT INTO transacoes (valor, cliente_id) 
VALUES (9.6, 1), (15.5, 1), (10.5, 2), (11.5, 3);

# Não irá funcionar pelo fato deste cliente ter transacoes;
DELETE FROM clientes WHERE cliente_id = 3;

