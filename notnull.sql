# A restrição NOT NULL impõe uma coluna para NÃO aceitar valores NULL.
# Isso obriga um campo a sempre conter um valor, 
# o que significa que você não pode inserir um 
# novo registro ou atualizar um registro sem adicionar um valor a esse campo.

#CREATE TABLE products(
#	product_id INT NOT NULL,
#    product_name varchar(50),
#    price DECIMAL(4,2)
#);

# Caso esquecer de adicionar a restrição durante a criação da tabela
ALTER TABLE products
MODIFY price DECIMAL(4,2) NOT NULL;

# Essa inserção não vai ser possível
INSERT INTO products 
(product_id, product_name, price)
VALUES 
(1, "Refrigerante", NULL);

SELECT * FROM products;