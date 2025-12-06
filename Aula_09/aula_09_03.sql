-- Aula 09 - Triggers

-- Atualiza o salário da Ana
UPDATE Funcionario 
SET salario = 4300.00 
WHERE nome = 'Ana';

SELECT * 
FROM funcionario_auditoria;