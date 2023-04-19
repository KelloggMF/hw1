
-- Dropping tables (if they exist, of course!)
DROP TABLE IF EXISTS films;
DROP TABLE IF EXISTS studios;

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

-- Creating and populating studios table
CREATE TABLE studios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    studio_name TEXT,
    film_title TEXT
);

INSERT INTO studios (
    studio_name,
    film_title
    )
VALUES (
    "Warner Bros.",
    "Batman Begins"
);

INSERT INTO studios (
    studio_name,
    film_title
    )
VALUES (
    "Warner Bros.",
    "The Dark Knight"
);

INSERT INTO studios (
    studio_name,
    film_title
    )
VALUES (
    "Warner Bros.",
    "The Dark Knight Rises"
);

-- Creating and populating roles table
CREATE TABLE roles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    film_title TEXT,
    actor_name TEXT,
    role_name TEXT
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "Batman Begins",
    "Christian Bale",
    "Bruce Wayne"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "Batman Begins",
    "Michael Caine",
    "Alfred"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "Batman Begins",
    "Liam Neeson",
    "Ra's Al Ghul"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "Batman Begins",
    "Katie Holmes",
    "Rachel Dawes"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "Batman Begins",
    "Gary Oldman",
    "Commissioner Gordon"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight",
    "Christian Bale",
    "Bruce Wayne"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight",
    "Heath Ledger",
    "Joker"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight",
    "Aaron Eckhart",
    "Harvey Dent"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight",
    "Michael Caine",
    "Alfred"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight",
    "Maggie Gyllenhaal",
    "Rachel Dawes"
);

INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight Rises",
    "Christian Bale",
    "Bruce Wayne"
);


INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight Rises",
    "Gary Oldman",
    "Commissioner Gordon"
);


INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight Rises",
    "Tom Hardy",
    "Bane"
);


INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight Rises",
    "Joseph Gordon-Levitt",
    "John Blake"
);


INSERT INTO roles (
    film_title,
    actor_name,
    role_name
)
VALUES (
    "The Dark Knight Rises",
    "Anne Hathaway",
    "Selina Kyle"
);

-- Realizing that I'm not using foreign key nomenclature here (e.g., film_id in the roles section).
-- I'm choosing not to do this because I imagine a user would rather see the film's title, rather than the corresponding ID number.