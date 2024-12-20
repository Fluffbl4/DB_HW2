--Имена групп/исполнителей
INSERT INTO artist (name) VALUES ('Red Hot Chili Peppers');
INSERT INTO artist (name) VALUES ('The Frames');
INSERT INTO artist (name) VALUES ('Big Strides');
INSERT INTO artist (name) VALUES ('Damien Jurado');
INSERT INTO artist (name) VALUES ('Queens of the Stone Age');
INSERT INTO artist (name) VALUES ('Radiohead');
INSERT INTO artist (name) VALUES ('Jaden');
INSERT INTO artist (name) VALUES ('Ferdous');

--Название жанров
INSERT INTO genre (name) VALUES ('New Metal');
INSERT INTO genre (name) VALUES ('Jazz');
INSERT INTO genre (name) VALUES ('Rock');

--Название альбомов
INSERT INTO album (title, release_year) VALUES ('By the Way', '2002-07-09');
INSERT INTO album (title, release_year) VALUES ('Erys', '2019-07-05');
INSERT INTO album (title, release_year) VALUES ('For My Own Sake', '2020-01-15');
INSERT INTO album (title, release_year) VALUES ('Small Town', '2005-06-06');
INSERT INTO album (title, release_year) VALUES ('Dance the Devil', '1999-06-25');
INSERT INTO album (title, release_year) VALUES ('Lullabies to Paralyze', '2002-03-21');
INSERT INTO album (title, release_year) VALUES ('OK Computer', '1997-05-21');

--Название треков
INSERT INTO track (title, duration, album_id) VALUES ('NOIZE', 240, 6);
INSERT INTO track (title, duration, album_id) VALUES ('On My Own', 240, 6);
INSERT INTO track (title, duration, album_id) VALUES ('Gravity', 159, 7);
INSERT INTO track (title, duration, album_id) VALUES ('Overdrive', 156, 7);
INSERT INTO track (title, duration, album_id) VALUES ('Can Stop', 240, 1);
INSERT INTO track (title, duration, album_id) VALUES ('I do not fear jazz', 215, 5);
INSERT INTO track (title, duration, album_id) VALUES ('In My Head', 240, 4);
INSERT INTO track (title, duration, album_id) VALUES ('Midnight', 300, 1);
INSERT INTO track (title, duration, album_id) VALUES ('Seven Day Mile', 240, 2);
INSERT INTO track (title, duration, album_id) VALUES ('Rent Day Blues', 240, 2);
INSERT INTO track (title, duration, album_id) VALUES ('No Surprises', 240, 3);
INSERT INTO track (title, duration, album_id) VALUES ('Lucky', 240, 3);

--Название коллекций
INSERT INTO collection (title, release_year) VALUES ('Random Collection of RHCP', '2004-06-21');
INSERT INTO collection (title, release_year) VALUES ('Random Collection of Big Strides', '2010-07-17');
INSERT INTO collection (title, release_year) VALUES ('Random Collection of QOTSA', '2004-06-21');
INSERT INTO collection (title, release_year) VALUES ('Random Collection of Radiohead', '2005-07-22');
INSERT INTO collection (title, release_year) VALUES ('Random Collection of The Frames', '2000-04-12');
INSERT INTO collection (title, release_year) VALUES ('Random Collection of Damien Jurado', '2019-02-01');

--Присоединение артистов к жанру
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('1', '1');
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('6', '1');
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('2', '2');
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('4', '2');
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('5', '3');
INSERT INTO artist_genre (artist_id, genre_id) VALUES ('7', '3');

--Присоединение артистов и альбомов
INSERT INTO artist_album (artist_id, album_id) VALUES (1, 1);
INSERT INTO artist_album (artist_id, album_id) VALUES (2, 2);
INSERT INTO artist_album (artist_id, album_id) VALUES (7, 5);
INSERT INTO artist_album (artist_id, album_id) VALUES (8, 7);
INSERT INTO artist_album (artist_id, album_id) VALUES (10, 6);

-- Присоединение коллекций к трекам
INSERT INTO collection_track (collection_id, track_id) VALUES (1, 1);
INSERT INTO collection_track (collection_id, track_id) VALUES (1, 2);
INSERT INTO collection_track (collection_id, track_id) VALUES (2, 3);
INSERT INTO collection_track (collection_id, track_id) VALUES (2, 4);
INSERT INTO collection_track (collection_id, track_id) VALUES (3, 5);
INSERT INTO collection_track (collection_id, track_id) VALUES (3, 6);
INSERT INTO collection_track (collection_id, track_id) VALUES (4, 7);