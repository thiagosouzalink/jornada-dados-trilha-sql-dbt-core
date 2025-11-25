-- Aula 08 - Stored Procedures

-- d39fae33-3ee9-45cc-b83b-de1d6f2cd794

CALL realizar_transacao('d', 'amarelo', 80000, 'd39fae33-3ee9-45cc-b83b-de1d6f2cd794')
CALL realizar_transacao('d', 'amarelo', 8000, 'd39fae33-3ee9-45cc-b83b-de1d6f2cd794')

SELECT * FROM clients;
SELECT * FROM transactions;