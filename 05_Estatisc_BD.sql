
-- Calcula métricas gerais do banco, como médias de idade e contagens totais.

-- Média de idade dos usuários
SELECT AVG(EXTRACT(YEAR FROM age(CURRENT_DATE, data_nascimento))) AS media_idade
FROM usuarios;

-- Contagem de reservas agrupadas por destino
SELECT id_destino, COUNT(*) AS total_reservas 
FROM reservas 
GROUP BY id_destino;

