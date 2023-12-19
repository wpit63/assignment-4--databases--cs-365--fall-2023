
-- shows all entries in the compiles relation with concatenation
SELECT CONCAT(artist_name, " recorded ", album_name) AS Recording FROM compiles;

-- shows the expected output using the subquery
SELECT artist_name FROM artist WHERE artist_id = ();

-- shows the expected output user the compiles relation
SELECT artist_name, album_name FROM compiles ORDER BY artist_id ASC;

-- show all tracks in every album
SELECT * FROM contains;

-- show all played tracks
SELECT * FROM played;
