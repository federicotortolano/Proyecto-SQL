/* Retorna la nacionalidad del usuario mediante su ID como parametro */

DELIMITER $$
CREATE FUNCTION `user_country`(id_user INT) RETURNS CHAR(50)
READS SQL DATA
BEGIN
RETURN (SELECT c.country
FROM user u
JOIN country c
ON u.country_id = c.country_id
WHERE u.user_id = id_user);
END $$

/* Retorna el promedio de valoracion de un juego mediante su ID como parametro */

DELIMITER $$
CREATE FUNCTION `average_value_game` (id_game INT) RETURNS FLOAT
READS SQL DATA
BEGIN
RETURN (SELECT AVG(v.value) 
FROM game g
JOIN value v
ON g.game_id = v.game_id
WHERE g.game_id = id_game);
END $$

SELECT user_country(140);
SELECT average_value_game(25);

