-- Criando um INDEX no first_name
CREATE INDEX first_name_index ON pessoas(first_name);

-- Fazendo uma busca usando um INDEX
SELECT COUNT(*) FROM pessoas WHERE first_name = 'aa'; -- 115 ms

-- Fazendo uma busca sem usar INDEX
SELECT COUNT(*) FROM pessoas WHERE last_name = 'aa'; -- 02.962
