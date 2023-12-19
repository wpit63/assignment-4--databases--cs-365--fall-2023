-- shows all entries in the compiles relation with concatenation
SELECT CONCAT(artist_name, " recorded ", album_name) AS Recording FROM compiles;

-- shows the expected output using the subquery
-- result equivalent to running:
-- SELECT artist_name, album_name FROM artist, album WHERE artist.artist_id = album.artist_id;
SELECT artist_name, album_name FROM artist JOIN album ON artist.artist_id = album.artist_id WHERE artist.artist_id IN (SELECT album.artist_id FROM album);

-- shows the expected output user the compiles relation
SELECT artist_name, album_name FROM compiles ORDER BY artist_id ASC;

-- show all tracks in every album
SELECT * FROM contains;

-- show all played tracks
SELECT * FROM played;
