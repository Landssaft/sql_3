INSERT INTO genre (id_genre, the_name_of_the_genre), 
VALUES (1, 'power_metal'),
(2, 'heavy_metal'),
(3, 'folk_rock'),
(4, 'electro')
);

INSERT INTO performer (id_performer, the_name_of_the_performer), 
VALUES (5, 'Аттила_Дорн'),
(6, 'Мэттью_Грейвульф'),
(7, 'Алексей_Павлов'),
(8, 'nanobii')
);

INSERT INTO genreperformer (id_genre, id_perfomer), 
VALUES (1, 5),
(2, 6),
(3, 7),
(4, 8)
);

INSERT INTO album (id_album, the_name_of_the_album, year_of_release), 
VALUES (9, 'the_sacrament_of_sin', 2018),
(10, 'Saartanic_Cluttydogs', 2001),
(11, 'Когда_мы_вернёмся_домой', 2017),
(12, 'Digital_Heart', 2018),
(13, 'Rainbow_Road', 2014),
(14, 'Chipland', 2017),
);

INSERT INTO performeralbum (id_performer, id_album), 
VALUES (5, 9),
(6, 10),
(7,11),
(8, 12)
);

INSERT INTO track (id_track, the_name_of_the_album, year_of_release, duration, id_album), 
VALUES (13, 'the_sacrament_of_sin', 2018, 240, 9),
(14, 'Saartanic_Cluttydogs', 2001, 300, 10),
(15, 'Когда_мы_вернёмся_домой', 2017, 60, 11),
(16, 'Digital_Heart', 2018, 180, 12),
(17, 'Rainbow_Road', 2014, 180, 13),
(18, 'Chipland', 2017, 180, 14),
);

INSERT INTO collection (id_collection, the_name_of_the_collection, year_of_release), 
VALUES (19, 'collection_1', 1998),
(20, 'collection_2', 2024),
(21, 'collection_3', 2019),
(22, 'collection_4', 2020),
(23, 'collection_5, 2001),
);

INSERT INTO trackcollection (id_track, id_collection), 
VALUES (13, 19),
(14, 20),
(15, 21),
(15, 22),
);