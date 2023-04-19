
-- Dropping tables (if they exist, of course!)
DROP TABLE IF EXISTS films;

-- Creating and populating films table 
CREATE TABLE films (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    film_title TEXT,
    year_released INTEGER,
    MPAA_rating TEXT,
    studio TEXT
);

INSERT INTO films (
    film_title,
    year_released,
    MPAA_rating,
    studio
    )
VALUES (
    "Batman Begins",
    "2005",
    "PG-13",
    "Warner Bros."
);

INSERT INTO films (
    film_title,
    year_released,
    MPAA_rating,
    studio
    )
VALUES (
    "The Dark Knight",
    "2008",
    "PG-13",
    "Warner Bros."
);

INSERT INTO films (
    film_title,
    year_released,
    MPAA_rating,
    studio
    )
VALUES (
    "The Dark Knight Rises",
    "2012",
    "PG-13",
    "Warner Bros."
);


