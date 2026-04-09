
-- Cruza dados de tabelas diferentes para gerar relatórios de consumo e atividade.

-- INNER JOIN: Traz apenas usuários que JÁ POSSUEM reservas
SELECT us.nome, rs.data, rs.status
FROM usuarios us
INNER JOIN reservas rs ON us.id = rs.id_usuario;

-- LEFT JOIN: Traz TODOS os usuários, inclusive os que nunca fizeram reserva
SELECT us.nome, rs.status
FROM usuarios us
LEFT JOIN reservas rs ON us.id = rs.id_usuario;

-- RIGHT JOIN: Traz TODOS os destinos, inclusive os que nunca foram visitados
SELECT des.nome AS destino, rs.id AS id_reserva
FROM reservas rs
RIGHT JOIN destinos des ON des.id = rs.id_destino;


