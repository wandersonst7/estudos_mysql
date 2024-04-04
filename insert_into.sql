# INSERINDO UM REGISTRO
INSERT INTO employees 
VALUES (1, "Wanderson", "Santos", 10.5, "2018-03-12");

# INSERINDO VÁRIOS REGISTROS
INSERT INTO employees 
VALUES (2, "Bruno", "Santos", 11.5, "2018-03-15"),
(3, "Pedro", "Santos", 25.5, "2019-05-15"), 
(4, "Lucas", "Santos", 15.6, "2020-01-02"),
(5, "João", "Santos", 22.5, "2024-01-01");

# INSERINDO VALORES APENAS EM COLUNAS ESPECÍFICAS
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "José", "Santos"); 

SELECT * FROM employees;