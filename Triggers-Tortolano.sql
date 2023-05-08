/* Creacion de tablas AUDITS, new_user y new_game */
DROP TABLE IF EXISTS audits;
CREATE TABLE audits(
	audit_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    entity VARCHAR(100),
    entity_id INT,
    insert_date DATE,
    insert_time TIME,
    created_by VARCHAR(100),
    last_update_date DATE,
    last_update_time TIME,
    last_update_user VARCHAR(100)
    );
   
DROP TABLE IF EXISTS new_user; 
CREATE TABLE new_user(
	new_user_id INT,
	username NVARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email NVARCHAR(60)
	);

DROP TABLE IF EXISTS new_game; 
CREATE TABLE new_game(
	new_game_id INT,
	name NVARCHAR(30),
    description NVARCHAR(30)
    );

/* Creacion del trigger "trigger_check_value_before_insert". Dicho trigger lo que hace es realizar una
validacion sobre el campo "value" antes de una insercion en la tabla "value" para que este quede 
comprendido dentro del rango 1-10. */

DELIMITER $$
CREATE TRIGGER trigger_check_value_before_insert 
BEFORE INSERT ON value
FOR EACH ROW
BEGIN
	IF NEW.value < 0 THEN
		SET NEW.value = 0;
	ELSEIF NEW.value > 10 THEN
		SET NEW.value = 10;
	END IF;
END $$

/* Creacion del trigger "trigger_check_value_before_update". Dicho trigger lo que hace es realizar una
validacion sobre el campo "value" antes de una actualizacion en la tabla "value" para que este quede 
comprendido dentro del rango 1-10. */

DELIMITER $$
CREATE TRIGGER trigger_check_value_before_update
BEFORE UPDATE ON value
FOR EACH ROW
BEGIN
	IF NEW.value < 0 THEN
		SET NEW.value = 0;
	ELSEIF NEW.value > 10 THEN
		SET NEW.value = 10;
	END IF;
END $$

INSERT INTO value (value, date, user_id, game_id)
VALUES (10, curdate(), 100, 20);

/* Creacion del trigger "trigger_after_insert_user". Dicho trigger lo que hace es insertar
en la tabla AUDITS lo siguiente: en que tabla se realizo la insercion (en este caso, user), 
el id de dicha entidad, a que hora, que dia y quien la realizo. Luego, realiza la insercion 
de los datos en la tabla "new_user". */

DELIMITER $$
DROP TRIGGER IF EXISTS trigger_after_insert_user;
CREATE TRIGGER trigger_after_insert_user
AFTER INSERT ON `user`
FOR EACH ROW
BEGIN
	INSERT INTO AUDITS (entity, entity_id, insert_date, insert_time, created_by)
    VALUES ('user', NEW.user_id, CURDATE(), CURTIME(), USER());
    INSERT INTO new_user (new_user_id, username, first_name, last_name, email)
    VALUES (NEW.user_id, NEW.username, NEW.first_name, NEW.last_name, NEW.email);
END $$

INSERT INTO `user` (username, first_name, last_name, email, country_id)
VALUES ('Fede22', 'federico', 'tortolano', 'fedetortolano@hotmail.com', 18);

UPDATE user SET username = "FedeT10" WHERE first_name = "federico";

/* Creacion del trigger "trigger_after_update_user". Dicho trigger lo que hace es actualizar
en la tabla AUDITS lo siguiente: a que hora, que dia, y quien realizo la actualizacion del registro.
Luego, realiza la actualizacion de los datos nuevos en la tabla "new_user". */

DELIMITER $$
DROP TRIGGER IF EXISTS trigger_after_update_user;
CREATE TRIGGER trigger_after_update_user
AFTER UPDATE ON user
FOR EACH ROW
BEGIN
	UPDATE audits 
	SET last_update_date = CURDATE(),
		last_update_time = CURTIME(),
		last_update_user = USER()
	WHERE entity_id = OLD.user_id;
    UPDATE new_user
    SET username = new.username,
		first_name = new.first_name,
        last_name = new.last_name,
        email = new.email
	WHERE new_user_id = OLD.user_id;
END $$

/* Creacion del trigger "trigger_after_insert_game". Dicho trigger lo que hace es insertar
en la tabla AUDITS lo siguiente: en que tabla se realizo la insercion (en este caso, game), 
el id de dicha entidad, a que hora, que dia y quien la realizo. Luego, realiza la insercion 
de los datos en la tabla "new_game". */

DELIMITER $$
DROP TRIGGER IF EXISTS trigger_after_insert_game;
CREATE TRIGGER trigger_after_insert_game
AFTER INSERT ON `game`
FOR EACH ROW
BEGIN
	INSERT INTO AUDITS (entity, entity_id, insert_date, insert_time, created_by)
    VALUES ('game', NEW.game_id, CURDATE(), CURTIME(), USER());
    INSERT INTO new_game (new_game_id, name, description)
    VALUES (NEW.game_id, NEW.name, NEW.description);
END $$

/* Creacion del trigger "trigger_after_update_game". Dicho trigger lo que hace es actualizar
en la tabla AUDITS lo siguiente: a que hora, que dia, y quien realizo la actualizacion del registro.
Luego, realiza la actualizacion de los datos nuevos en la tabla "new_game". */

DELIMITER $$
DROP TRIGGER IF EXISTS trigger_after_update_game;
CREATE TRIGGER trigger_after_update_game
AFTER UPDATE ON game
FOR EACH ROW
BEGIN
	UPDATE audits 
	SET last_update_date = CURDATE(),
		last_update_time = CURTIME(),
		last_update_user = USER()
	WHERE entity_id = OLD.game_id;
    UPDATE new_game
    SET name = new.name,
		description = new.description
	WHERE new_game_id = OLD.game_id;
END $$

INSERT INTO `game` (name, type_id, description, creator_id)
VALUES ('FIFA23', 1, 'Juego de futbol', 20);

UPDATE game SET name = "FIFA 23: WC QATAR2022" WHERE name = "FIFA23";
