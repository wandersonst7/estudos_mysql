# CRIANDO TABELA
CREATE TABLE employees (
	employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    # 5 digitos com precisão de 2 casas após a vírgula: ex:  129,99
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

# RENOMEANDO TABELA (2 formas)
#ALTER TABLE employees RENAME workers;
RENAME TABLE workers TO employees;

# EXCLUINDO TABELA
DROP TABLE employees;

# ADICIONANDO NOVA COLUNA
ALTER TABLE employees 
ADD phone_number VARCHAR(15);

# RENOMEANDO COLUNA
ALTER TABLE employees 
RENAME COLUMN phone_number TO email;

# MODIFICANDO TIPO DA COLUNA
ALTER TABLE employees 
MODIFY COLUMN email VARCHAR(100);

# MOVENDO COLUNA DE LUGAR (apenas FIRST para mover para a primeira posição)
ALTER TABLE employees 
MODIFY email VARCHAR(100)
AFTER last_name;

# REMOVENDO COLUNA
ALTER TABLE employees
DROP COLUMN email;

# Consultando tabela de funcionários
SELECT * FROM employees;


