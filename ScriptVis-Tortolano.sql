/* Juegos mejores votados en orden descendente */
CREATE VIEW most_values AS 
	(SELECT g.name, v.value
	 FROM game g
     JOIN value v
     ON g.game_id = v.game_id
     ORDER BY v.value DESC);

/* Cantidad de descargas por país en orden descendente */
CREATE OR REPLACE VIEW downloads_by_country AS
	(SELECT c.country, COUNT(*) AS downloads
     FROM download d
     JOIN country c
     ON c.country_id = d.country_id
     GROUP BY c.country
     ORDER BY downloads DESC);

/* Cantidad de usuarios argentinos */
CREATE OR REPLACE VIEW users_arg AS
	(SELECT COUNT(*) AS users_arg
     FROM user u
     JOIN country c
     ON c.country_id = u.country_id
     WHERE c.country LIKE "%Argentina%");

/* Los 10 juegos mas jugados y por que usuario */
CREATE OR REPLACE VIEW ten_most_played_games AS
	(SELECT u.username, g.name, ge.game_time
	FROM game_experience ge
	JOIN game g
	JOIN user u
	ON g.game_id = ge.game_id AND u.user_id = ge.user_id
	ORDER BY ge.game_time DESC
	LIMIT 10);

/* Los juegos que mas veces se completaron en orden descendente */
CREATE OR REPLACE VIEW most_completed_games AS
	(SELECT g.name, COUNT(*) as times_completed
    FROM game g
    JOIN game_experience ge
    ON g.game_id = ge.game_id
    WHERE ge.complete = 1
    GROUP BY g.name
    ORDER BY times_completed desc
    LIMIT 10);
         
SELECT * FROM downloads_by_country;
SELECT * FROM most_values;
SELECT * FROM users_arg;
SELECT * FROM ten_most_played_games;
SELECT * FROM most_completed_games;