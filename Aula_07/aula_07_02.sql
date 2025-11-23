-- Aula 07 - DDL
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS clients (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    limite INTEGER NOT NULL,
    saldo INTEGER NOT NULL,
	CHECK (saldo >= -limite),
	CHECK (limite > 0)
);

CREATE TABLE IF NOT EXISTS transactions (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    tipo CHAR(1) NOT NULL,
    descricao VARCHAR(10) NOT NULL,
    valor INTEGER NOT NULL,
    cliente_id UUID  NULL,
    realizada_em TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO clients (limite, saldo)
VALUES
    (10000, 0),
    (80000, 0),
    (1000000, 0),
    (10000000, 0),
    (500000, 0);
	
INSERT INTO transactions (tipo, descricao, valor, cliente_id)
VALUES ('d', 'amarelo', 80000, 'inserir id client');

UPDATE clients
SET saldo = saldo + CASE WHEN t.tipo = 'd' THEN -t.valor ELSE t.valor END
FROM transactions t
WHERE clients.id = t.cliente_id;
	
SELECT * FROM clients;
SELECT * FROM transactions;
