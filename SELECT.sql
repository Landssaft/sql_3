SELECT the name of the album, duration 
FROM track 
WHERE duration=(SELECT MAX(duration) FROM track);

SELECT the name of the album 
FROM track
WHERE duration>= 210;

SELECT the name of the collection
FROM collection c 
WHERE year of release >=2018 AND year of release <= 2020;

SELECT id performer 
FROM performer 
WHERE id performer NOT LIKE '% %';

SELECT the name of the album 
FROM track t  
WHERE lower(the name of the album) LIKE 'my %' OR 
lower(the name of the album) LIKE '% my' OR 
lower(the name of the album) LIKE '% my %' OR 
lower(the name of the album) LIKE 'my';

SELECT the name of the genre, COUNT(the name of the performer)
FROM performer S
LEFT JOIN genreperformer js ON S.id = js.id_genre
LEFT JOIN genre j ON js.id_genre = j.id
GROUP BY the name of the genre;

SELECT COUNT(the name of the album) 
FROM track t  
LEFT JOIN album a ON a.id = t.id album
WHERE year of release BETWEEN 2019 AND 2020;

SELECT the name of the album, AVG(duration)
FROM album a 
LEFT JOIN track ON a.id = track.id album
GROUP BY the name of the album;

SELECT the name of the performer  
FROM performer s
WHERE the name of the performer NOT IN (SELECT the name of the performer)  
FROM performer s
LEFT JOIN performeralbum ALS ON s.id = ALS.id_album
LEFT JOIN album a ON ALS.id_album = a.id
WHERE year of release = 2020);

SELECT the name of the collection, the name of the album, the name of the performer
FROM collection c 
LEFT JOIN trackcollection TC ON c.id = TC.id_collection
LEFT JOIN track T ON TC.id_track = T.id
LEFT JOIN album A ON T.id_album = A.id 
LEFT JOIN performeralbum ALS ON A.id = ALS.id_album
LEFT JOIN performer s ON s.id = ALS.id_performer
WHERE the name of the performer LIKE '%Мэттью Грейвульф%';