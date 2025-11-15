-- Desafio
-- 1. Cria um relatório para todos os pedidos de 1996 e seus clientes (152 linhas)
SELECT 
	o.*, c.*
FROM orders o
LEFT JOIN customers c
	ON o.customer_id = c.customer_id
WHERE extract(YEAR from o.order_date) = 1996;


-- 2. Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem funcionários (5 linhas)
SELECT 
	e.city AS cidade,
	count(distinct e.employee_id) AS numero_funcionarios,
	count(distinct c.customer_id) AS numero_clientes
FROM employees e
LEFT JOIN customers c 
ON e.city = c.city
GROUP BY e.city;


-- 3. Cria um relatório que mostra o número de funcionários e clientes de cada cidade que tem clientes (69 linhas)
SELECT 
	c.city AS cidade,
	count(distinct c.customer_id) AS numero_clientes,
	count(distinct e.employee_id) AS numero_funcionarios
FROM customers c 
LEFT JOIN employees e 
ON e.city = c.city
GROUP BY c.city;


-- 4.Cria um relatório que mostra o número de funcionários e clientes de cada cidade (71 linhas)
SELECT 
	coalesce(c.city, e.city) AS cidade,
	count(distinct c.customer_id) AS numero_clientes,
	count(distinct e.employee_id) AS numero_funcionarios
FROM customers c 
FULL JOIN employees e 
ON e.city = c.city
GROUP BY coalesce(c.city, e.city);


-- 5. Cria um relatório que mostra a quantidade total de produtos encomendados.
-- Mostra apenas registros para produtos para os quais a quantidade encomendada é menor que 200 (5 linhas)
SELECT 
	p.product_name AS nome_produto,
	sum(od.quantity) AS quantidade_total 
FROM order_details od
INNER JOIN products p
ON p.product_id = od.product_id
GROUP BY p.product_name
HAVING sum(od.quantity) < 200;


-- 6. Cria um relatório que mostra o total de pedidos por cliente desde 31 de dezembro de 1996.
-- O relatório deve retornar apenas linhas para as quais o total de pedidos é maior que 15 (5 linhas)
SELECT 
	c.contact_name,
	count(o.order_id) AS total_pedidos
FROM orders o
LEFT JOIN customers c
	ON c.customer_id = o.customer_id
WHERE o.order_date >= '1996-12-31'
GROUP BY c.contact_name
HAVING count(o.order_id) > 15;