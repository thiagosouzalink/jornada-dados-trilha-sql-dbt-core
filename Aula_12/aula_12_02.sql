-- Verificando o tempo e buscando somente pelo índice:
SELECT id FROM pessoas WHERE id = 100000;
EXPLAIN ANALYZE SELECT id FROM pessoas WHERE id = 100000;

-- Buscando somente pelo índice, mas observando os detalhes da tabela:
SELECT first_name FROM pessoas WHERE id = 100000;
EXPLAIN ANALYZE SELECT first_name FROM pessoas WHERE id = 100000;

-- Buscando e trazendo dados da tabela de maneira eficiente:
SELECT first_name FROM pessoas WHERE first_name = 'aa';

-- Buscando e trazendo dados da tabela da pior maneira possível:
SELECT first_name FROM pessoas WHERE first_name LIKE '%a%';