# ATUALIZANDO APENAS UMA COLUNA DE UM REGISTRO
UPDATE employees 
SET hourly_pay = 10.25
WHERE employee_id = 6;

# ATUALIZANDO VÁRIAS COLUNAS DE UM REGISTRO
UPDATE employees
SET hourly_pay = 15,
	hire_date = "2023-05-03"
WHERE employee_id = 6;

# ATUALIZANDO COLUNA PARA NULL
UPDATE employees
SET hire_date = NULL
WHERE employee_id = 6;

# ATUALIZANDO COLUNAS DE VÁRIOS REGISTROS
UPDATE employees
SET hourly_pay = 7.99, 
	hire_date = "2019-01-01";

SELECT * FROM employees;