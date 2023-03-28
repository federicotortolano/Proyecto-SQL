CREATE SCHEMA Steam;
USE steam;

CREATE TABLE country(
	country_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    country CHAR(30) NOT NULL
);

CREATE TABLE game_type(
	type_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type VARCHAR(30) NOT NULL
);

CREATE TABLE user(
	user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(20) NOT NULL,
    first_name CHAR(20) NOT NULL,
    last_name CHAR(20) NOT NULL,
    email VARCHAR(60) NOT NULL,
	country_id INT NOT NULL,
    FOREIGN KEY	(country_id) REFERENCES country(country_id)
);

CREATE TABLE creator(
	creator_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name CHAR(20) NOT NULL,
    last_name CHAR(20) NOT NULL,
    reputation INT,
    country_id INT NOT NULL,
    FOREIGN KEY	(country_id) REFERENCES country(country_id)
);

CREATE TABLE game(
	game_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    type_id INT NOT NULL,
    description VARCHAR(30),
    creator_id INT NOT NULL,
    FOREIGN KEY (creator_id) REFERENCES creator(creator_id),
    FOREIGN KEY (type_id) REFERENCES game_type(type_id)
);

CREATE TABLE game_experience(
	experience_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    complete BOOL NOT NULL,
    game_time TIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);

CREATE TABLE comment(
	comment_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    comment VARCHAR(100),
    date DATETIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);

CREATE TABLE value(
	value_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    value INT NOT NULL,
    date DATETIME NOT NULL,
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (game_id) REFERENCES game(game_id)
);

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

