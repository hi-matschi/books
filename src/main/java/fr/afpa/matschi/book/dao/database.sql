-- UP
CREATE DATABASE java_book;

CREATE TABLE author (
	id_author INT NOT NULL AUTO_INCREMENT,
	firstname VARCHAR(250),
	lastname VARCHAR(250)
);

INSERT INTO author (firstname, lastname) VALUES
	('Steve','McConnell'),
	('J.K.', 'Rowling'),
	('Mark', 'Yerger'),
	('Thierry', 'Courtin');


CREATE TABLE book (
	id_book INT NOT NULL AUTO_INCREMENT,
	isbn VARCHAR(250),
	title VARCHAR(250),
	subtitle VARCHAR(250),
	img VARCHAR(250)
);

CREATE TABLE copy (
	id_copy INT NOT NULL AUTO_INCREMENT,
	is_available ENUM(1,0)
);

INSERT INTO copy (is_available, id_book, id_user) VALUES
	(0, 1, 2),
	(0, 1, 3),
	(1, 2, null),
	(1, 3, null);

CREATE TABLE grade (
	id_grade INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(250),
	is_admin ENUM(1,0)
);

INSERT INTO grade (name, is_admin) VALUES
	('admin', 1),
	('subscriber', 0);

CREATE TABLE user (
	id_user INT NOT NULL AUTO_INCREMENT,
	login VARCHAR(250),
	password VARCHAR(250),
	nb_subscriber VARCHAR(10)
);

INSERT INTO user (login, password, nb_subscriber, id_grade) VALUES
	('root', 'root', '1234567890', 1),
	('sub', 'sub', '0987654321', 2),
	('sub2', 'sub2', '0987651234', 2);

-- DOWN
DROP DATABASE java_book;
