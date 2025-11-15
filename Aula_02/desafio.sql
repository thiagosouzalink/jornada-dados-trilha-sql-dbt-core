-- Desafio
-- 1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM suppliers;

-- 2. Obter todos os Clientes em ordem alfabética por país e nome
SELECT *
FROM customers
ORDER BY country, contact_name;

-- 3. Obter os 5 pedidos mais antigos
SELECT *
FROM orders
ORDER BY order_date
LIMIT 5;

-- 4. Obter a contagem de todos os Pedidos feitos durante 1997
SELECT count(*) AS total_pedidos_feitos_em_1997
FROM orders
WHERE extract(YEAR from order_date) = 1997;

-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
SELECT contact_name
FROM customers
WHERE upper(contact_title) LIKE '%MANAGER%'
ORDER BY contact_name;

-- 6. Obter todos os pedidos feitos em 19 de maio de 1997
SELECT * 
FROM orders
WHERE order_date = '1997-05-19';