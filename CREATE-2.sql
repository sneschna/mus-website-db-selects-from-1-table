CREATE TABLE IF NOT EXISTS artist (
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(60)NOT null
	);

CREATE TABLE IF NOT EXISTS genre (
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60)NOT null
	);	

CREATE TABLE IF NOT EXISTS genre_artist (
	genre_id INTEGER REFERENCES genre(genre_id),
	artist_id INTEGER REFERENCES artist(artist_id),
	CONSTRAINT pk PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Collection_of_songs (
	Collection_id SERIAL PRIMARY KEY,
	Collection_name VARCHAR(60)NOT null,
	Collection_release_year DATE  NOT NULL
	);

CREATE TABLE IF NOT EXISTS albom (
	albom_id SERIAL PRIMARY KEY,
	albom_name VARCHAR(60) NOT null,
	albom_release_year DATE  NOT NULL
	);

CREATE TABLE IF NOT EXISTS sound_treck (
	sound_treck_id SERIAL PRIMARY KEY,
	streck_name VARCHAR(128) NOT null,
	albom_id INTEGER REFERENCES albom(albom_id),
	streck_duration TIME
	);

CREATE TABLE IF NOT EXISTS Collection_treck (
	sound_treck_id INTEGER REFERENCES sound_treck(sound_treck_id),
	Collection_id INTEGER REFERENCES Collection_of_songs(Collection_id),
	CONSTRAINT ct PRIMARY KEY (sound_treck_id, Collection_id)
	);

CREATE TABLE IF NOT EXISTS albom_artist (
	albom_id INTEGER REFERENCES albom(albom_id),
	artist_id INTEGER REFERENCES artist(artist_id),
	CONSTRAINT aa PRIMARY KEY (albom_id, artist_id)
	);


