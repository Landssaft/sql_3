SELECT the_name_of_the_album, duration 
FROM track 
WHERE duration=(SELECT MAX(duration) FROM track);

SELECT the_name_of_the_album 
FROM track
WHERE duration>= 210;

SELECT the_name_of_the_collection
FROM collection c 
WHERE year_of_release >=2018 AND year_of_release <= 2020;

SELECT id_performer 
FROM performer 
WHERE id_performer NOT LIKE '% %';

SELECT the_name_of_the_album 
FROM track t  
WHERE lower(the_name_of_the_album) LIKE 'my %' OR 
lower(the_name_of_the_album) LIKE '% my' OR 
lower(the_name_of_the_album) LIKE '% my %' OR 
lower(the_name_of_the_album) LIKE 'my';

SELECT the_name_of_the_genre, COUNT(the_name_of_the_performer)
FROM performer S
LEFT JOIN genreperformer js ON S.id = js.id_genre
LEFT JOIN genre j ON js.id_genre = j.id
GROUP BY the_name_of_the_genre;

SELECT COUNT(the_name_of_the_album) 
FROM track t  
LEFT JOIN album a ON a.id = t.id album
WHERE year_of_release BETWEEN 2019 AND 2020;

SELECT the_name_of_the_album, AVG(duration)
FROM album a 
LEFT JOIN track ON a.id = track.id_album
GROUP BY the_name_of_the_album;

SELECT the_name_of_the_performer  
FROM performer s
WHERE the_name_of_the_performer NOT IN (SELECT the_name_of_the_performer)  
FROM performer s
LEFT JOIN performeralbum ALS ON s.id = ALS.id_album
LEFT JOIN album a ON ALS.id_album = a.id
WHERE year_of_release = 2020);

SELECT the_name_of_the_collection, the_name_of_the_album, the_name_of_the_performer
FROM collection c 
LEFT JOIN trackcollection TC ON c.id = TC.id_collection
LEFT JOIN track T ON TC.id_track = T.id
LEFT JOIN album A ON T.id_album = A.id 
LEFT JOIN performeralbum ALS ON A.id = ALS.id_album
LEFT JOIN performer s ON s.id = ALS.id_performer
WHERE the_name_of_the_performer LIKE '%Мэттью_Грейвульф%';