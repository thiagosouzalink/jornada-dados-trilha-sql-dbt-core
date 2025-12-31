-- Operações de busca em índices e varredura de tabelas no contexto do PostgreSQL

-- Table Scan (Varredura de Tabela):
SELECT * FROM pessoas;

-- Index Scan (Varredura de Índice):
SELECT * FROM pessoas WHERE id = 100;

-- Bitmap Index Scan (Varredura de Bitmap de Índice):
SELECT id, first_name FROM pessoas WHERE id = 100 OR first_name = 'aa';

-- Index Only Scan (Varredura Apenas no Índice):
CREATE INDEX idx_pessoas_first_name ON pessoas(first_name);
SELECT first_name FROM pessoas WHERE first_name = 'aa';