CREATE TABLE IF NOT EXISTS artist (
  artist_id   INT          NOT NULL,
  artist_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (artist_id)
);

CREATE TABLE IF NOT EXISTS album (
  artist_id  INT          REFERENCES artist(artist_id),
  album_id   INT          NOT NULL,
  album_name VARCHAR(128) NOT NULL,
  PRIMARY KEY (album_id, album_name)
);

CREATE TABLE IF NOT EXISTS track (
  artist_id  INT          REFERENCES artist(artist_id),
  album_id   INT          REFERENCES album(album_id),
  track_id   INT          NOT NULL,
  track_name VARCHAR(128) NOT NULL,
  time       DECIMAL(5,2) NOT NULL,
  PRIMARY KEY (track_id, track_name)
);

CREATE TABLE IF NOT EXISTS compiles (
  artist_name  INT          REFERENCES artist(artist_name),
  album_name   INT          REFERENCES album(album_name)
);

CREATE TABLE IF NOT EXISTS contains (
  album_name   INT          REFERENCES album(album_name),
  track_name   INT          REFERENCES track(track_name)
);

CREATE TABLE IF NOT EXISTS wasPlayedAt (
  album_name   INT           REFERENCES album(album_name),
  playTime     INT           REFERENCES played(played)
);

CREATE TABLE IF NOT EXISTS played (
  album_name VARCHAR(128)  NOT NULL
  played     TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (played)
);
