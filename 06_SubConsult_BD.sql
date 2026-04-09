
-- Consultas dentro de consultas para encontrar "buracos" nos dados ou rankings.

-- Encontrar usuários que nunca fizeram reserva (Filtro de exclusão)
SELECT nome FROM usuarios
WHERE id NOT IN (SELECT id_usuario FROM reservas);

-- Listar usuários com a contagem individual de reservas ao lado do nome
SELECT nome, 
  (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas
FROM usuarios;

