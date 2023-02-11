CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS genre_artist (
	artist_id int REFERENCES artist(artist_id) ,
	genre_id int REFERENCES genre(genre_id)
--	CONSTRAINT pk PRIMARY KEY (Genre_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Album (
	Album_id SERIAL PRIMARY KEY,
	Album_name VARCHAR(40),
	Year_of_release int NOT NULL
);

CREATE TABLE IF NOT EXISTS Album_Artist (
	Album_id int REFERENCES Album(Album_id),
	Artist_id int REFERENCES Artist(Artist_id)
--	CONSTRAINT pk PRIMARY KEY (Album_id, Artist_id)
);

CREATE TABLE IF NOT EXISTS Track (
	Album_id INT REFERENCES Album(Album_id),
	Track_id SERIAL PRIMARY KEY,
	Track_name VARCHAR(40),
	Duration_in_seconds INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection (
	Collection_id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(40),
	Year_of_release int NOT NULL
);

CREATE TABLE IF NOT EXISTS Collection_Track (
	Collection_id int REFERENCES Collection(Collection_id),
	Track_id int REFERENCES Track(Track_id)
--	CONSTRAINT pk PRIMARY KEY (Collection_id, Track_id)
);

