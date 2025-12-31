-- Custo do Índice:
SELECT pg_size_pretty(pg_relation_size('idx_pessoas_first_name'));

-- Tamanho Total da Coluna:
SELECT 
	pg_size_pretty(pg_column_size(first_name)::bigint) AS tamanho_total
FROM pessoas;

-- Tamanho Total de Todas as Colunas:
SELECT 
	pg_size_pretty(SUM(pg_column_size(first_name)::bigint)) AS tamanho_total
FROM pessoas;