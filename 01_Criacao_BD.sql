
-- Cria a estrutura inicial do banco com os tipos de dados corretos e IDs autoincrementais.

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    e_mail VARCHAR(255) NOT NULL UNIQUE,
    data_nascimento DATE,
    endereco VARCHAR(255)
);

CREATE TABLE destinos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE reservas (
    id SERIAL PRIMARY KEY,
    id_usuario INT,
    id_destino INT,
    data DATE,
    status VARCHAR(50) DEFAULT 'pendente'
);

