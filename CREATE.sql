createdb -U postgres music
psql -U postgres -d music
music=# CREATE TABLE genre (
	id genre SERIAL PRIMARY KEY, 
	the name of the genre VARCHAR(60) NOT NULL,
);

CREATE TABLE genreperformer (
	id_genre references genre(id genre),
	id_performer references performer(id performer),
);

CREATE TABLE performer (
	id performer SERIAL PRIMARY KEY, 
	the name of the performer VARCHAR(60) NOT NULL,  
);

CREATE TABLE performeralbum (
	id_performer references performer(id performer),
	id_album references album(id album),
);

CREATE TABLE album (
	id album SERIAL PRIMARY KEY,
	the name of the album VARCHAR(60) NOT NULL, 
	year of release INTEGER CHECK(year of release > 1980), 
);

CREATE TABLE track (
	id track serial primary key,
	the name of the album VARCHAR(60) NOT NULL, 
	year of release INTEGER, 
	duration INTEGER CHECK(duration > 60),
	id_album  integer references album(id album), 

);

CREATE TABLE trackcollection (
	id_collection references collection(id collection),
	id_track references track(id track),

CREATE TABLE collection (
	id collection SERIAL PRIMARY KEY,
	the name of the collection VARCHAR(60) NOT NULL, 
	year of release INTEGER CHECK(year of release > 1980),
);