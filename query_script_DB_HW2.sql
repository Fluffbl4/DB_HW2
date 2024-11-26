CREATE TABLE artist (
    artist_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE genre (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE album (
    album_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year SMALLINT CHECK (release_year > 1900 AND release_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE track (
    track_id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    duration INTERVAL NOT NULL,
    album_id INT REFERENCES album(album_id) ON DELETE CASCADE
);

CREATE TABLE collection (
    collection_id SERIAL PRIMARY KEY,
    title VARCHAR(250) NOT NULL,
    release_year SMALLINT CHECK (release_year > 1900 AND release_year <= EXTRACT(YEAR FROM CURRENT_DATE))
);

CREATE TABLE artist_genre (
    artist_id INT REFERENCES artist(artist_id) ON DELETE CASCADE,
    genre_id INT REFERENCES genre(genre_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE artist_album (
    artist_id INT REFERENCES artist(artist_id) ON DELETE CASCADE,
    album_id INT REFERENCES album(album_id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE collection_track (
    collection_id INT REFERENCES collection(collection_id) ON DELETE CASCADE,
    track_id INT REFERENCES track(track_id) ON DELETE CASCADE,
    PRIMARY KEY (collection_id, track_id)
);