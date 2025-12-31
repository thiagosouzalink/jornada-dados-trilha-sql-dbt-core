CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE pessoas (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(3),
    last_name VARCHAR(3)
);

SELECT 
    tablename AS "Tabela",
    indexname AS "Índice",
    indexdef AS "Definição do Índice"
FROM 
    pg_indexes 
WHERE 
    tablename = 'pessoas';
	

DROP TABLE IF EXISTS pessoas;
CREATE TABLE pessoas (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(3),
    last_name VARCHAR(3)
);

-- Inserção de 1 Milhão de Registros:
INSERT INTO pessoas (first_name, last_name)
SELECT 
    substring(md5(random()::text), 0, 3),
    substring(md5(random()::text), 0, 3)
FROM 
    generate_series(1, 1000000);