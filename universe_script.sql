CREATE TABLE galaxy(
   galaxy_id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   description text,
   galaxy_type CHARACTER,
   magnitude numeric
);

/*
	- "star" should have a foreign key that references one of the rows in galaxy
*/
CREATE TABLE star(
   star_id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   magnitude numeric,
   description text,
   galaxy_id integer
);

/*
	- "planet" should have a foreign key that references one of the rows in star
*/
CREATE TABLE planet(
   planet_id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   description text,
   has_atmosphere boolean,
   has_rings boolean,
   radius_in_km integer,
   star_id integer
);

/*
	- "moon" should have a foreign key that references one of the rows in planet
*/
CREATE TABLE moon(
   moon_id SERIAL PRIMARY KEY,
   name VARCHAR NOT NULL,
   description text,
   distance_to_planet integer,
   radius numeric,
   planet_id integer
);


CREATE TABLE clusters(
    clusters_id integer PRIMARY KEY,
    name VARCHAR NOT NULL,
    galaxy_id integer,
    cluster_type character
);

ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);
ALTER TABLE planet ADD FOREIGN KEY (star_id) REFERENCES star(star_id);
ALTER TABLE moon ADD FOREIGN KEY (planet_id) REFERENCES planet(planet_id);

ALTER TABLE STAR ADD UNIQUE(star_id);
ALTER TABLE galaxy ADD UNIQUE(galaxy_id);
ALTER TABLE moon ADD UNIQUE(moon_id);
ALTER TABLE planet ADD UNIQUE(planet_id);
ALTER TABLE clusters ADD UNIQUE(clusters_id);


INSERT INTO galaxy VALUES (1, 'Milky Way', 'diameter of 100k-200k', 'B', 0.1);
INSERT INTO galaxy VALUES (2, 'Large Magellanic', NULL, 'B', 0.90);
INSERT INTO galaxy VALUES (3, 'Small Magellanic', NULL, 'C', 0.45);
INSERT INTO galaxy VALUES (4, 'Andromeda', NULL, 'D', 0.5);
INSERT INTO galaxy VALUES (5, 'NGC', NULL, 'D', 0.5);
INSERT INTO galaxy VALUES (6, 'Hoang', NULL, 'E', 0.6);

INSERT INTO clusters VALUES (1, 'Argos Rho', 1, NULL);
INSERT INTO clusters VALUES (2, 'Exodus', 1, NULL);
INSERT INTO clusters VALUES (3, 'Horse Head Nebula', 1, NULL);

INSERT INTO star values (1, 'Sirus', 1.23, 'Alpha', 1);
INSERT INTO star values (2, 'Sun', 1.2, 'Gamma', 1);
INSERT INTO star values (3, 'Pax', 1.3, 'Beta', 1);
INSERT INTO star values (4, 'Stren', 2.3, NULL, 1);
INSERT INTO star values (5, 'Procyn', 4.5, NULL, 1);
INSERT INTO star values (6, 'Acrux', 12, NULL, 1);

INSERT INTO planet VALUES (1, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (2, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (3, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (4, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (5, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (6, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (7, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (8, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (9, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (10, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (11, 'planet', NULL, NULL, NULL, NULL, 8);
INSERT INTO planet VALUES (12, 'planet', NULL, NULL, NULL, NULL, 8);

INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
INSERT INTO moon(name, description, distance_to_planet, radius, planet_id) VALUES ('moon', NULL, NULL, NULL, 1);
