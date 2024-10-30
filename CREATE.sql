createdb -U postgres music
psql -U postgres -d music
music=# CREATE TABLE genre (
	id_genre SERIAL PRIMARY KEY, 
	the_name_of_the_genre VARCHAR(60) NOT NULL,
);

CREATE TABLE genreperformer (
	id_genre references genre(id_genre),
	id_performer references performer(id_performer),
);

CREATE TABLE performer (
	id_performer SERIAL PRIMARY KEY, 
	the_name_of_the_performer VARCHAR(60) NOT NULL,  
);

CREATE TABLE performeralbum (
	id_performer references performer(id_performer),
	id_album references album(id_album),
);

CREATE TABLE album (
	id_album SERIAL PRIMARY KEY,
	the_name_of_the_album VARCHAR(60) NOT NULL, 
	year_of_release INTEGER CHECK(year_of_release > 1980), 
);

CREATE TABLE track (
	id_track SERIAL PRIMARY KEY,
	the_name_of_the_album VARCHAR(60) NOT NULL, 
	year_of_release INTEGER, 
	duration INTEGER CHECK(duration > 60),
	id_album  integer references album(id_album), 

);

CREATE TABLE trackcollection (
	id_collection references collection(id_collection),
	id_track references track(id_track),

);

CREATE TABLE collection (
	id_collection SERIAL PRIMARY KEY,
	the_name_of_the_collection VARCHAR(60) NOT NULL, 
	year_of_release INTEGER CHECK(year_of_release > 1980),
);