/* Creacion de tablas AUDITS y new_user */

CREATE TABLE AUDITS(
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
    
SELECT * FROM AUDITS;
SELECT * FROM user;

CREATE TABLE new_user(
	new_user_id INT,
	username NVARCHAR(30),
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email NVARCHAR(60)
	);
    
SELECT * FROM new_user;

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
