CREATE TABLE planets(
    id TEXT PRIMARY KEY,
    orbital_period_years FLOAT NOT NULL
);

INSERT INTO planets(id, orbital_period_years)
    VALUES('Earth', '1.00'),
    ('Mars', '1.882'),
    ('Venus', '0.62'),
    ('Proxima Centauri b', '0.03'),
    ('Gliese 876 b', '0.236');

CREATE TABLE stars(
    id TEXT PRIMARY KEY,
    star_temp_in_kelvin INT NOT NULL,
)

CREATE TABLE moons(
    id TEXT PRIMARY KEY,
)