--Название и продолжительность самого длительного трека
SELECT title, duration
FROM track
ORDER BY duration DESC
LIMIT 1;

--Название треков, продолжительность которых больше 3.5 минут
SELECT title
FROM track
WHERE duration > 210; -- 3 минуты 30 секунд в секундах

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT title
FROM collection
WHERE release_year BETWEEN '2018-01-01' AND '2020-12-31';

--Исполнители, чьё имя состоит из одного слова
SELECT name
FROM artist
WHERE name NOT LIKE '% %'; -- Исключение имён, содержащих пробел

--Название треков, которые содержат слово «мой» или «my»
SELECT title
FROM track
WHERE LOWER(title) LIKE '%мой%' OR LOWER(title) LIKE '%my%';

--Количество исполнителей в каждом жанре
SELECT g.name AS genre_name, COUNT(DISTINCT ag.artist_id) AS artists_count
FROM genre g
JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.name;

--Количество треков, вошедших в альбомы 2019-2020 годов
SELECT COUNT(t.track_id)
FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN '2019-01-01' AND '2020-12-31';

--Средняя продолжительность треков по каждому альбому
SELECT a.title AS album_title, AVG(t.duration) AS average_duration
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.title;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.artist_id, a.name
FROM artist a
LEFT JOIN artist_album aa ON a.artist_id = aa.artist_id
LEFT JOIN album al ON aa.album_id = al.album_id AND al.release_year != '2020-01-01'
WHERE al.album_id IS NULL;

--Названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT c.title
FROM collection c
JOIN collection_track ct ON c.collection_id = ct.collection_id
JOIN track t ON ct.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN artist_album aa ON a.album_id = aa.album_id
JOIN artist ar ON aa.artist_id = ar.artist_id
WHERE ar.name LIKE 'Da%';