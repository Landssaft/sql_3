INSERT INTO genre (id genre, the name of the genre) 
VALUES (1, 'power metal'),
(2, 'heavy metal'),
(3, 'folk rock'),
(4, 'electro');

INSERT INTO performer (id performer, the name of the performer) 
VALUES (5, 'Аттила Дорн'),
(6, 'Мэттью Грейвульф'),
(7, 'Алексей Павлов'),
(8, 'nanobii');

INSERT INTO genreperformer (id_genre, id_perfomer) 
VALUES (1, 5),
(2, 6),
(3, 7),
(4, 8);

INSERT INTO album (id album, the name of the album, year of release) 
VALUES (9, 'the sacrament of sin', 2018),
(10, 'Saartanic Cluttydogs', 2001),
(11, 'Когда мы вернёмся домой', 2017),
(12, 'Digital Heart', 2018);
(13, 'Rainbow Road', 2014);
(14, 'Chipland', 2017);

INSERT INTO performeralbum (id_performer, id_album) 
VALUES (5, 9),
(6, 10),
(7,11),
(8, 12);

INSERT INTO track (id track, the name of the album, year of release, duration, id_album) 
VALUES (13, 'the sacrament of sin', 2018, 240, 9),
(14, 'Saartanic Cluttydogs', 2001, 300, 10),
(15, 'Когда мы вернёмся домой', 2017, 60, 11),
(16, 'Digital Heart', 2018, 180, 12),
(17, 'Rainbow Road', 2014, 180, 13),
(18, 'Chipland', 2017, 180, 14);

INSERT INTO collection (id collection, the name of the collection, year of release) 
VALUES (19, 'collection 1', 1998),
(20, 'collection 2', 2024),
(21, 'collection 3', 2019),
(22, 'collection 4', 2020),
(23, 'collection 5, 2001);

INSERT INTO trackcollection (id_track, id_collection) 
VALUES (13, 19),
(14, 20),
(15, 21),
(15, 22);