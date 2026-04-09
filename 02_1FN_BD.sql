-- Fatia a coluna endereco em colunas atômicas para permitir filtros por cidade, estado ou rua.

-- Criar novas colunas
ALTER TABLE usuarios
ADD COLUMN rua VARCHAR(100),
ADD COLUMN numero VARCHAR(10),
ADD COLUMN cidade VARCHAR(50),
ADD COLUMN estado VARCHAR(50);

-- Fatiar e copiar os dados (usando a vírgula como separador)
UPDATE usuarios
SET 
    rua = trim(split_part(endereco, ',', 1)),
    numero = trim(split_part(endereco, ',', 2)),
    cidade = trim(split_part(endereco, ',', 3)),
    estado = trim(split_part(endereco, ',', 4));

-- Remover a coluna antiga
ALTER TABLE usuarios DROP COLUMN endereco;
