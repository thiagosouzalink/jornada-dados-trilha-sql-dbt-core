-- Aula 07 - DDL
-- CREATE TABLE
CREATE TABLE IF NOT EXISTS clients (
    id SERIAL PRIMARY KEY NOT NULL,
    limite INTEGER NOT NULL,
    saldo INTEGER NOT NULL
);

-- CREATE TABLE IF NOT EXISTS transactions (
--     id SERIAL PRIMARY KEY NOT NULL,
--     tipo CHAR(1) NOT NULL,
--     descricao VARCHAR(10) NOT NULL,
--     valor INTEGER NOT NULL,
--     cliente_id INTEGER NOT NULL,
--     realizada_em TIMESTAMP NOT NULL DEFAULT NOW()
-- );

-- INSERT INTO
INSERT INTO clients (limite, saldo)
VALUES
    (10000, 0),
    (80000, 0),
    (1000000, 0),
    (10000000, 0),
    (500000, 0);
	

-- DELETE
DELETE FROM clients
WHERE id = 1;

INSERT INTO clients (limite, saldo)
VALUES (600000, 0);

SELECT * FROM clients;

DROP TABLE clients;