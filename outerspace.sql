CREATE TABLE planets(
    id TEXT PRIMARY KEY,
    orbital_period_years FLOAT NOT NULL,
    planet_star NOT NULL VARCHAR(40) REFERENCES stars
);

INSERT INTO planets(id, orbital_period_years, planet_star)
    VALUES('Earth', '1.00','Sun'),
    ('Mars', '1.882','Sun'),
    ('Venus', '0.62','Sun'),
    ('Proxima Centauri b', '0.03','Proxima Centauri'),
    ('Gliese 876 b', '0.236','Gliese 876');

CREATE TABLE stars(
    id  VARCHAR(40) PRIMARY KEY,
    star_temp_in_kelvin INT NOT NULL
);

INSERT INTO stars(id, star_temp_in_kelvin)
    VALUES ('Sun', '5800'),
           ('Proxima Centauri', '3042'),
           ('Gliese 876', '3192');


CREATE TABLE moons(
    id  VARCHAR(40) PRIMARY KEY
    moon_planet NOT NULL VARCHAR(40) REFERENCES planets
);

INSERT INTO moons(id, moon_planet)
    VALUES ('Moon','Earth'),
           ('Phobos','Mars'),
           ('Deimos','Mars');