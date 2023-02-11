CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
	artist_id INT REFERENCES artist(artist_id) ,
	genre_id INT REFERENCES genre(genre_id),
	CONSTRAINT pk_genre_artist PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	year_of_release INT NOT NULL
);

CREATE TABLE IF NOT EXISTS album_artist (
	album_id INT REFERENCES album(album_id),
	artist_id INT REFERENCES artist(artist_id),
	CONSTRAINT pk_album_artist PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS track (
	album_id INT REFERENCES album(album_id),
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(40) NOT NULL,
	duration_in_seconds INT NOT NULL
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(40) NOT NULL,
	year_of_release INT NOT NULL
);

CREATE TABLE IF NOT EXISTS collection_track (
	collection_id INT REFERENCES collection(collection_id),
	track_id INT REFERENCES track(track_id),
	CONSTRAINT pk_collection_track PRIMARY KEY (collection_id, track_id)
);



