# A restrição CHECK é usada para limitar o 
# intervalo de valores que pode ser colocado em uma coluna.
# Se você definir uma restrição CHECK em uma coluna, 
# ela permitirá apenas determinados valores para esta coluna.
# Se você definir uma restrição CHECK em uma tabela, 
# ela poderá limitar os valores em determinadas colunas 
# com base nos valores de outras colunas da linha.

CREATE TABLE employees(
	employee_id INT,
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE,
    CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00)
);

# Caso esquecer de adicionar a restrição durante a criação da tabela
ALTER TABLE employees
ADD CONSTRAINT chk_hourly_pay CHECK (hourly_pay >= 10.00);

# Isso não vai ser permitido, pois viola a restrição: chk_hourly_pay
INSERT INTO employees
VALUES (1, "Wanderson", "Santos", 5.00, "2024-01-01");

# Removendo restrição CHECK
ALTER TABLE employees
DROP CHECK chk_hourly_pay;

SELECT * FROM employees;