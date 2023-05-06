CREATE DATABASE universe;

CREATE TABLE galaxy(galaxy_id SERIAL PRIMARY KEY);
CREATE TABLE star(star_id SERIAL PRIMARY KEY);
CREATE TABLE planet(planet_id SERIAL PRIMARY KEY);
CREATE TABLE moon(moon_id SERIAL PRIMARY KEY);
CREATE TABLE black_hole(black_hole_id SERIAL PRIMARY KEY);

ALTER TABLE galaxy ADD COLUMN name VARCHAR(245) NOT NULL;
ALTER TABLE star ADD COLUMN name VARCHAR(245) NOT NULL;
ALTER TABLE planet ADD COLUMN name VARCHAR(245) NOT NULL;
ALTER TABLE moon ADD COLUMN name VARCHAR(245) NOT NULL;
ALTER TABLE black_hole ADD COLUMN name VARCHAR(245) NOT NULL;

ALTER TABLE galaxy ADD COLUMN distance_from_sun INT NOT NULL;
ALTER TABLE star ADD COLUMN distance_from_sun INT NOT NULL;
ALTER TABLE planet ADD COLUMN distance_from_sun INT NOT NULL;
ALTER TABLE moon ADD COLUMN distance_from_sun INT NOT NULL;
ALTER TABLE black_hole ADD COLUMN distance_from_sun INT NOT NULL;


ALTER TABLE galaxy ADD COLUMN gravity NUMERIC(4,1) NOT NULL;
ALTER TABLE star ADD COLUMN gravity NUMERIC(4,1) NOT NULL;
ALTER TABLE planet ADD COLUMN gravity NUMERIC(4,1) NOT NULL;
ALTER TABLE moon ADD COLUMN gravity NUMERIC(4,1) NOT NULL;
ALTER TABLE black_hole ADD COLUMN gravity NUMERIC(4,1) NOT NULL;

ALTER TABLE galaxy ADD COLUMN description TEXT;
ALTER TABLE star ADD COLUMN description TEXT;
ALTER TABLE planet ADD COLUMN description TEXT;
ALTER TABLE moon ADD COLUMN description TEXT;
ALTER TABLE black_hole ADD COLUMN description TEXT;

ALTER TABLE galaxy ADD COLUMN is_in_via_lactea BOOLEAN NOT NULL;
ALTER TABLE star ADD COLUMN is_in_via_lactea BOOLEAN NOT NULL;
ALTER TABLE planet ADD COLUMN is_in_via_lactea BOOLEAN NOT NULL;
ALTER TABLE moon ADD COLUMN is_in_via_lactea BOOLEAN NOT NULL;
ALTER TABLE black_hole ADD COLUMN is_in_via_lactea BOOLEAN NOT NULL;

ALTER TABLE galaxy ADD COLUMN atmosphere TEXT UNIQUE;
ALTER TABLE star ADD COLUMN atmosphere TEXT UNIQUE;
ALTER TABLE planet ADD COLUMN atmosphere TEXT UNIQUE;
ALTER TABLE moon ADD COLUMN atmosphere TEXT UNIQUE;
ALTER TABLE black_hole ADD COLUMN atmosphere TEXT UNIQUE;

ALTER TABLE star ADD COLUMN galaxy_id INT NOT NULL;
ALTER TABLE star ADD CONSTRAINT (galaxy_id) FOREIGN KEY galaxy_id REFERENCES galaxy(galaxy_id);

INSERT INTO galaxy VALUES(1, 'via lactea', 0, 0, NULL, TRUE);
INSERT INTO star VALUES(1, 'sun', 274, 0, 'hot', TRUE, 1);

ALTER TABLE planet ADD COLUMN star_id INT NOT NULL;
ALTER TABLE planet ADD CONSTRAINT star_id FOREIGN KEY star_id REFERENCES star(star_id);

INSERT INTO planet VALUES(1, 'earth', 150, 9.8, 'cool', TRUE, 1);

ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL;
ALTER TABLE moon ADD CONSTRAINT planet_id FOREIGN KEY planet_id REFERENCES planet(planet_id);

INSERT INTO moon VALUES(1, 'moon', 150, 1.6, 'dark', TRUE, 1);

/* we will assume that only can exist one black hole for galaxy */
ALTER TABLE black_hole ADD COLUMN galaxy_id INT UNIQUE NOT NULL;
ALTER TABLE black_hole ADD CONSTRAINT galaxy_id FOREIGN KEY galaxy_id REFERENCES planet(planet_id);

INSERT INTO black_hole VALUES(1, 'Messier 82', 30, 30, NULL, TRUE, 1);

INSERT INTO galaxy VALUES(2, 'Galáxia Anã do Cão Maior', 30, 30, NULL, TRUE);
INSERT INTO star VALUES(2, 'Alpha Andromedae', 274, 0, 'beatiful', TRUE, 2);
INSERT INTO planet VALUES(2, 'Messier 31', 30, 30, NULL, TRUE, 2);
INSERT INTO moon VALUES(2, 'andromedae moon', 150, 1.6, 'dark', TRUE, 2);

INSERT INTO galaxy VALUES(3, 'Corrente Estelar de Virgo', 30, 30, NULL, TRUE);
INSERT INTO star VALUES(3, 'Alpha Virginis', 30, 30, NULL, TRUE, 3);
INSERT INTO planet VALUES(3, 'Only god knows', 30, 30, NULL, TRUE, 3);
INSERT INTO moon VALUES(3, 'virgo moon', 150, 1.6, 'dark', TRUE, 3);

INSERT INTO galaxy VALUES(4, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO star VALUES(4, 'Alpha Andromedae', 274, 0, 'beatiful', TRUE, 4);
INSERT INTO planet VALUES(4, 'Only god knows', 30, 30, NULL, TRUE, 4);
INSERT INTO moon VALUES(4, 'andromedae moon', 150, 1.6, 'dark', TRUE, 4);

INSERT INTO black_hole VALUES(2, 'Messier 15', 30, 30, NULL, TRUE, 2);
INSERT INTO black_hole VALUES(3, 'Messier 110', 30, 30, NULL, TRUE, 3);
INSERT INTO black_hole VALUES(4, 'NGC 1313 X-1', 30, 30, NULL, TRUE, 4);

INSERT INTO galaxy VALUES(5, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO star VALUES(5, 'Alpha Virginis', 30, 30, NULL, TRUE, 5);
INSERT INTO planet VALUES(5, 'Only god knows', 30, 30, NULL, TRUE, 5);
INSERT INTO moon VALUES(5, 'andromedae moon', 150, 1.6, 'dark', TRUE, 5);

INSERT INTO galaxy VALUES(6, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO star VALUES(6, 'Alpha Virginis', 30, 30, NULL, TRUE, 6);
INSERT INTO planet VALUES(6, 'Only god knows', 30, 30, NULL, TRUE, 6);
INSERT INTO moon VALUES(6, 'andromedae moon', 150, 1.6, 'dark', TRUE, 6);

INSERT INTO galaxy VALUES(7, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(7, 'Alpha Virginis', 30, 30, NULL, TRUE, 7);
INSERT INTO planet VALUES(7, 'Only god knows', 30, 30, NULL, TRUE, 7);

INSERT INTO galaxy VALUES(8, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(8, 'Alpha Virginis', 30, 30, NULL, TRUE, 8);
INSERT INTO planet VALUES(8, 'Only god knows', 30, 30, NULL, TRUE, 8);

INSERT INTO galaxy VALUES(9, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(9, 'Alpha Virginis', 30, 30, NULL, TRUE, 9);
INSERT INTO planet VALUES(9, 'Only god knows', 30, 30, NULL, TRUE, 9);

INSERT INTO galaxy VALUES(10, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(10, 'Alpha Virginis', 30, 30, NULL, TRUE, 10);
INSERT INTO planet VALUES(10, 'Only god knows', 30, 30, NULL, TRUE, 10);

INSERT INTO galaxy VALUES(11, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(11, 'Alpha Virginis', 30, 30, NULL, TRUE, 11);
INSERT INTO planet VALUES(11, 'Only god knows', 30, 30, NULL, TRUE, 11);

INSERT INTO galaxy VALUES(12, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO moon VALUES(12, 'Alpha Virginis', 30, 30, NULL, TRUE, 12);
INSERT INTO planet VALUES(12, 'Only god knows', 30, 30, NULL, TRUE, 12);

INSERT INTO galaxy VALUES(13, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(13, 'Only god knows', 30, 30, NULL, TRUE, 13);

INSERT INTO galaxy VALUES(14, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(14, 'Only god knows', 30, 30, NULL, TRUE, 14);

INSERT INTO galaxy VALUES(15, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(15, 'Only god knows', 30, 30, NULL, TRUE, 15);

INSERT INTO galaxy VALUES(16, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(16, 'Only god knows', 30, 30, NULL, TRUE, 16);

INSERT INTO galaxy VALUES(17, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(17, 'Only god knows', 30, 30, NULL, TRUE, 17);

INSERT INTO galaxy VALUES(18, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(18, 'Only god knows', 30, 30, NULL, TRUE, 18);

INSERT INTO galaxy VALUES(19, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(19, 'Only god knows', 30, 30, NULL, TRUE, 19);

INSERT INTO galaxy VALUES(20, 'Andrômeda', 30, 30, NULL, TRUE);
INSERT INTO planet VALUES(20, 'Only god knows', 30, 30, NULL, TRUE, 20);