/* EL SP insert_country, como su nombre lo indica, inserta en la tabla 
"country", en la columna "country" las nacionalidades que le pase el usuario 
por parametro y arroja un mensaje exitoso. Si no le envía nada arroja ERROR. */

DELIMITER $$
DROP PROCEDURE IF EXISTS `insert_country`;
CREATE PROCEDURE `insert_country` (IN field CHAR(100), OUT output varchar(100))
BEGIN
	IF field <> '' THEN
		INSERT INTO country (country) VALUES (field);
        set output = 'Insercion exitosa';
	ELSE 
		set output = 'ERROR: No se pudo crear el producto indicado';
	END IF;
    
    SET @clausula = 'SELECT * FROM country ORDER BY country_id DESC ';
    PREPARE runSQL FROM @clausula;
    EXECUTE runSQL;
    DEALLOCATE PREPARE runSQL;
END $$

CALL insert_country("Argentina", @error);

/* El SP order_user, ordena la tabla "user" por el campo que le indique el usuario por parametro, 
y de la manera (ASC o DESC) que se la envía de la misma forma. En caso de no enviarle parametro, 
simplemente hace un SELECT de la tabla user, sin ningun tipo de ordenamiento */

DELIMITER $$
DROP PROCEDURE IF EXISTS `order_user`;
CREATE PROCEDURE `order_user` (IN field VARCHAR(30), IN type CHAR(4))
BEGIN
	IF field <> '' THEN
		SET @user_order = CONCAT('ORDER BY ', field, ' ', type);
	ELSE 
		SET @user_order = '';
	END IF;
    
	SET @clausula = concat('SELECT * FROM user ', @user_order);
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;
END $$

CALL order_user('first_name', 'ASC');