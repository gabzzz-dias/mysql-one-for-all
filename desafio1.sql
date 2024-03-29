DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE plans(
plan_id INT PRIMARY KEY AUTO_INCREMENT,
plan_name VARCHAR(100) NOT NULL,
plan_value DECIMAL(5, 2) NOT NULL
);

CREATE TABLE artists(
artist_id INT PRIMARY KEY AUTO_INCREMENT,
artist_name VARCHAR(100) NOT NULL
);

CREATE TABLE albums(
album_id INT PRIMARY KEY AUTO_INCREMENT,
album_name VARCHAR(100) NOT NULL,
artist_id INT NOT NULL,
FOREIGN KEY(artist_id)
REFERENCES artists(artist_id)
);

CREATE TABLE songs(
song_id INT PRIMARY KEY AUTO_INCREMENT,
song_name VARCHAR(100) NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY(album_id)
REFERENCES albums(album_id)
);

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT,
user_name VARCHAR(100) NOT NULL,
user_age INT NOT NULL,
plan_id INT NOT NULL,
FOREIGN KEY(plan_id)
REFERENCES plans(plan_id)
);

CREATE TABLE user_following(
user_id INT NOT NULL,
artist_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, artist_id),
FOREIGN KEY(user_id)
REFERENCES users(user_id),
FOREIGN KEY(artist_id)
REFERENCES artists(artist_id)
);

CREATE TABLE user_history(
user_id INT NOT NULL,
song_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(user_id, song_id),
FOREIGN KEY(user_id)
REFERENCES users(user_id),
FOREIGN KEY(song_id)
REFERENCES songs(song_id)
);

INSERT INTO plans(plan_name, plan_value) 
VALUES
('gratuito', 0),
('universitario', 5.99),
('familiar', 7.99);

INSERT INTO users(user_name, user_age, plan_id)
VALUES
('Thati', 23, 1),
('Cintia', 35, 3),
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO artists(artist_name) 
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO albums(album_name, artist_id) 
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO songs(song_name, album_id)
VALUES
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire', 1),
('Time Fireworks', 1),
('Magic Circus', 2),
('Honey, So Do I', 2),
('Sweetie, Let\'s Go Wild', 2),
('She Knows', 2),
('Fantasy For Me', 3),
('Celebration Of More', 3),
('Rock His Everything', 3),
('Home Forever', 3),
('Diamond Power', 3),
('Honey, Let\'s Be Silly', 3),
('Thang Of Thunder', 4),
('Words Of Her Life', 4),
('Without My Streets', 4);

INSERT INTO user_following(user_id, artist_id)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO user_history(user_id, song_id)
VALUES
(1, 1),
(1, 6),
(1, 14),
(1, 16),
(2, 13),
(2, 17),
(2, 2),
(2, 15),
(3, 4),
(3, 16),
(3, 6),
(4, 3),
(4, 18),
(4, 11);
