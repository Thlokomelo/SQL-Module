----Question 1

CREATE TABLE albums (
 album_id bigserial, ----auto generated
 album_catalog_code varchar(100),
 album_title text,
 album_artist text,
 album_release_date date,
 album_genre varchar(40),
 album_description text,
CONSTRAINT album_id_key PRIMARY KEY (album_id), ----Primary key column
CONSTRAINT check_album_release_date CHECK (album_release_date > '1/1/1925')
);

CREATE TABLE songs (
 song_id bigserial, ----auto generated
 song_title text NOT NULL, ----column cannot be empty
 song_artist text NOT NULL, ----column cannot be empty
 album_id bigint REFERENCES albums (album_id),   ----foreign key column references from the album table
 CONSTRAINT song_id_key PRIMARY KEY ( song_id)   ----Primary key column
);

----Question 2

-- album_catalog_code could be used as an alternative primary key (natural key) -
-- as it is unique and is an item that any album should always have.

----Question 3

-- album_id and song_id are indexes by default as they are Primary key columns.
-- other columns would be the album/song title, album/song artist, and album_release_date. 



