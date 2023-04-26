-- TODO: change ID to name

CREATE TABLE stars(
    id VARCHAR(40) PRIMARY KEY,
    star_temp_in_kelvin INT NOT NULL
);
CREATE TABLE planets(
    id VARCHAR(40) PRIMARY KEY,
    orbital_period_years FLOAT NOT NULL,
    planet_star VARCHAR(40) NOT NULL REFERENCES stars
);
CREATE TABLE moons(
    id VARCHAR(40) PRIMARY KEY,
    moon_planet VARCHAR(40) NOT NULL REFERENCES planets
);
INSERT INTO stars(id, star_temp_in_kelvin)
    VALUES ('Sun', '5800'),
           ('Proxima Centauri', '3042'),
           ('Gliese 876', '3192');

INSERT INTO planets(id, orbital_period_years, planet_star)
    VALUES('Earth', '1.00','Sun'),
    ('Mars', '1.882','Sun'),
    ('Venus', '0.62','Sun'),
    ('Proxima Centauri b', '0.03','Proxima Centauri'),
    ('Gliese 876 b', '0.236','Gliese 876');

INSERT INTO moons(id, moon_planet)
    VALUES ('Moon','Earth'),
           ('Phobos','Mars'),
           ('Deimos','Mars');

SELECT planets.id AS planets, stars.id AS stars, count(moons.id) AS moon_count
FROM planets
JOIN stars
ON planets.planet_star = stars.id
LEFT OUTER JOIN moons
ON moons.moon_planet = planets.id
GROUP BY planets.id, stars.id
ORDER BY planets.id ASC;

select planets.id, stars.id, stars.star_temp_in_kelvin
from planets
join stars
on planets.planet_star = stars.id;

SELECT planets.id AS planets, count(stars.id) as star_count
FROM planets
JOIN stars
ON planets.planet_star = stars.id
LEFT OUTER JOIN moons
ON moons.moon_planet = planets.id
GROUP BY planets.id;
