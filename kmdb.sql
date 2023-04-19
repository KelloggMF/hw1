-- Dropping tables (if they exist, of course!)
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS roles;

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

-- Creating and populating roles table
CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    film_id INTEGER ,
    actor_name TEXT,
    role_name TEXT
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    1,
    "Christian Bale",
    "Bruce Wayne"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    1,
    "Michael Caine",
    "Alfred"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    1,
    "Liam Neeson",
    "Ra's Al Ghul"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    1,
    "Katie Holmes",
    "Rachel Dawes"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    1,
    "Gary Oldman",
    "Commissioner Gordon"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    2,
    "Christian Bale",
    "Bruce Wayne"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    2,
    "Heath Ledger",
    "Joker"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    2,
    "Aaron Eckhart",
    "Harvey Dent"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    2,
    "Michael Caine",
    "Alfred"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    2,
    "Maggie Gyllenhaal",
    "Rachel Dawes"
);

INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    3,
    "Christian Bale",
    "Bruce Wayne"
);


INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    3,
    "Gary Oldman",
    "Commissioner Gordon"
);


INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    3,
    "Tom Hardy",
    "Bane"
);


INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    3,
    "Joseph Gordon-Levitt",
    "John Blake"
);


INSERT INTO roles (
    film_id,
    actor_name,
    role_name
)
VALUES (
    3,
    "Anne Hathaway",
    "Selina Kyle"
);

-- Formatting for SELECT statement I
.mode column
.headers off
.print ""
.print "Movies"
.print "======"
.print ""

-- Writing the SQL statement for the movies output
SELECT film_title, year_released, MPAA_rating, studio FROM films;

-- Formatting for SELECT statement II
.print ""
.print "Top Cast"
.print "========"
.print ""


-- Writing the SQL statement for the cast output 
SELECT films.film_title, roles.actor_name, roles.role_name
FROM films INNER JOIN roles ON films.id = roles.film_id;
