# OBS: No MySQL, as transações são suportadas 
# pelo motor de banco de dados *InnoDB*, 
# mas não o são pelo motor MyISAM.

# Desativando AUTOCOMMIT
SET AUTOCOMMIT = OFF;

# Excluindo todos os registros
DELETE FROM employees;

# Verificando exclusão
SELECT * FROM employees;

# Confirmando alterações
COMMIT;

#Desfazendo alterações
ROLLBACK;

# Verificando se os registros voltaram
SELECT * FROM employees;