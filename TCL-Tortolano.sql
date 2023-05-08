START TRANSACTION;
DELETE FROM user WHERE first_name = 'Jodee';
ROLLBACK;
COMMIT;

START TRANSACTION;
INSERT INTO `user` (username, first_name, last_name, email, country_id)
VALUES ('fedetortolano', 'Federico', 'Tortolano', 'fedetortolano@hotmail.com', 18),
	   ('carotortolano', 'Carolina', 'Tortolano', 'carotortolano@hotmail.com', 18),
	   ('diegotortolano', 'Diego', 'Tortolano', 'diegotortolano@hotmail.com', 18),
	   ('ericamascellone', 'Erica', 'Mascellone', 'ericamascellone@hotmail.com', 18);
SAVEPOINT save1;       
INSERT INTO `user` (username, first_name, last_name, email, country_id)
VALUES ('fedetortolano', 'Federico', 'Tortolano', 'fedetortolano@hotmail.com', 18),
	   ('carotortolano', 'Carolina', 'Tortolano', 'carotortolano@hotmail.com', 18),
	   ('diegotortolano', 'Diego', 'Tortolano', 'diegotortolano@hotmail.com', 18),
	   ('ericamascellone', 'Erica', 'Mascellone', 'ericamascellone@hotmail.com', 18);
SAVEPOINT save2;
/*RELEASE SAVEPOINT save1;*/


