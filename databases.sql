# Criando Banco de Dados
CREATE DATABASE myDB; 

# Seleciona banco de dados (Importante antes de criar tabelas, inserir dados etc)
USE myDB; 

# Ativando somente leitura (não pode modificar, nem excluir)
ALTER DATABASE mydb READ ONLY = 1;

# Exclui o banco de dados
DROP DATABASE myDB;

# desativando somente leitura
ALTER DATABASE mydb READ ONLY = 0;


