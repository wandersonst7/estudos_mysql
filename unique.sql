# A restrição UNIQUE garante que todos os valores em uma coluna sejam diferentes.
# Ambas as restrições UNIQUE e PRIMARY KEY fornecem uma 
# garantia de exclusividade para uma coluna ou conjunto de colunas.
# A restrição PRIMARY KEY automaticamente possui uma restrição UNIQUE.
# No entanto, você pode ter muitas restrições UNIQUE por tabela, 
# mas apenas uma restrição PRIMARY KEY por tabela.

CREATE TABLE products(
	product_id INT,
    product_name varchar(50),
    price DECIMAL(4,2)
);

# Caso esquecer de adicionar a restrição durante a criação da tabela
ALTER TABLE products
ADD CONSTRAINT
UNIQUE(product_name);

# Essa inserção não vai ser possível
INSERT INTO products 
(product_id, product_name, price)
VALUES 
(1, "Refrigerante", 10.5),
(2, "Sorvete", 20),
(3, "Chocolate", 12),
(4, "Sorvete", 15.6);

SELECT * FROM products;