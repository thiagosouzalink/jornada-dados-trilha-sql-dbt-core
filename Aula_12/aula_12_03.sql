-- Entendendo um pouco mais do Explain

-- Consulta simples:
EXPLAIN SELECT * FROM pessoas;

-- Consulta com ordenação por id:
EXPLAIN SELECT * FROM pessoas ORDER BY id;

-- Consulta com ordenação por last_name:
EXPLAIN SELECT * FROM pessoas ORDER BY last_name;