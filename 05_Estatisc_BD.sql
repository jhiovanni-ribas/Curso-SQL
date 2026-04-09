
-- Calcula métricas gerais do banco, como médias de idade e contagens totais.

-- Conta o total de registros
SELECT COUNT(*) FROM usuarios;

-- Média de idade
SELECT AVG(EXTRACT(YEAR FROM age(CURRENT_DATE, data_nascimento))) AS media_idade
FROM usuarios;

-- Soma das idades (útil para estatísticas de grupo)
SELECT SUM(EXTRACT(YEAR FROM age(CURRENT_DATE, data_nascimento))) AS soma_idades
FROM usuarios;

-- Menor idade (O mais jovem)
SELECT MIN(EXTRACT(YEAR FROM age(CURRENT_DATE, data_nascimento))) AS menor_idade
FROM usuarios;

-- Maior idade (O mais experiente)
SELECT MAX(EXTRACT(YEAR FROM age(CURRENT_DATE, data_nascimento))) AS maior_idade
FROM usuarios;



-- Contagem de reservas agrupadas por destino
SELECT id_destino, COUNT(*) AS total_reservas 
FROM reservas 
GROUP BY id_destino;


-- LIMIT E OFFSET
-- Essencial para quando você tem muitos dados e quer mostrar apenas uma "página" por vez no seu dashboard.

-- Pula os 2 primeiros e pega o próximo (Offset 2, Limit 1)
SELECT id_destino, COUNT(*) AS total_reservas 
FROM reservas 
GROUP BY id_destino 
LIMIT 1 OFFSET 2;

-- Pega apenas o primeiro resultado da lista
SELECT id_destino, COUNT(*) AS total_reservas 
FROM reservas 
GROUP BY id_destino 
LIMIT 1;


-- ORDER BY
-- Aqui é onde você organiza a bagunça alfabética ou cronológica.

-- Ordem alfabética simples
SELECT nome FROM usuarios ORDER BY nome;

-- Ordena por data (mais velhos primeiro) e depois por nome
SELECT nome, data_nascimento 
FROM usuarios 
ORDER BY data_nascimento, nome;

-- Mais novos primeiro (DESC) e nome em ordem inversa caso empatem
SELECT nome, data_nascimento 
FROM usuarios 
ORDER BY data_nascimento DESC, nome DESC;

-- Explicação: DESC significa Descendente (do maior para o menor). Se não colocar nada, o padrão é ASC (Ascendente).

