
-- Cria os elos de ligação entre as tabelas, garantindo que não existam reservas para usuários inexistentes e limpando dados órfãos.

-- Relacionar Reservas com Usuários (Com delete automático)
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_usuarios
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
ON DELETE CASCADE;

-- Relacionar Reservas com Destinos
ALTER TABLE reservas
ADD CONSTRAINT fk_reservas_destinos
FOREIGN KEY (id_destino) REFERENCES destinos(id);
