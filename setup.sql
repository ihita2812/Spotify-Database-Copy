DROP TABLE IF EXISTS Artists;
DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Songs;

CREATE TABLE Artists();

CREATE TABLE Albums(
    Album_Id INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Artist_Id VARCHAR(100) NOT NULL,
    Duration TIME NOT NULL,
    No_of_tracks INT NOT NULL,
    Genre VARCHAR(50) IN ["Rock", "Pop", "Rap"]
    PRIMARY KEY(Album_Id),
    FOREIGN KEY(Artist_Id) REFERENCES Artists(Artist_Id)
);

CREATE TABLE Songs(
    Album_Id INT NOT NULL,
    Track_No INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Duration TIME NOT NULL,
    PRIMARY KEY(Album_Id, Track_No),
    FOREIGN KEY(Album_Id) REFERENCES Albums(Album_Id) ON DELETE CASCADE
);