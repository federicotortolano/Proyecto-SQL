CREATE SCHEMA Steam;
USE steam;

DROP TABLE IF EXISTS country;
CREATE TABLE country(
	country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS game_type;
CREATE TABLE game_type(
	type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS user;
CREATE TABLE user(
	user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username NVARCHAR(30) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    email NVARCHAR(60) NOT NULL,
	country_id INT NOT NULL,
    FOREIGN KEY	(country_id) REFERENCES country(country_id)
);

DROP TABLE IF EXISTS creator;
CREATE TABLE creator(
	creator_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    reputation INT,
    country_id INT NOT NULL,
    FOREIGN KEY	(country_id) REFERENCES country(country_id)
);

DROP TABLE IF EXISTS game;
CREATE TABLE game(
	game_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name NVARCHAR(30) NOT NULL,
    type_id INT NOT NULL,
    description NVARCHAR(30),
    creator_id INT NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES creator(creator_id),
    FOREIGN KEY (type_id) REFERENCES game_type(type_id)
);

DROP TABLE IF EXISTS game_experience;
CREATE TABLE game_experience(
	experience_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    complete BOOL NOT NULL,
    game_time TIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);

DROP TABLE IF EXISTS comment;
CREATE TABLE comment(
	comment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comment NVARCHAR(100),
    date DATETIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);


DROP TABLE IF EXISTS value;
CREATE TABLE value(
	value_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    value INT NOT NULL,
    date DATETIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);

DROP TABLE IF EXISTS download;
CREATE TABLE download(
	download_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    duration TIME NOT NULL,
    date DATE NOT NULL,
    country_id INT NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
	FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id),
    FOREIGN KEY	(country_id) REFERENCES country(country_id)
);