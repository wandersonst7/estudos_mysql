CREATE TABLE test(
	my_date DATE,
	my_time TIME,
	my_datetime DATETIME
);

# current_date() = retorna a data atual
# current_time() = retorna a hora atual
# now() = retorna a data e a hora atual
INSERT INTO test(my_date, my_time, my_datetime)
VALUES(current_date(), current_time(), now());

# Esta soma irá resultar no acréscimo de 1 dia na data atual
INSERT INTO test(my_date, my_time, my_datetime)
VALUES(current_date() + 1, NULL, NULL);

SELECT * FROM test;