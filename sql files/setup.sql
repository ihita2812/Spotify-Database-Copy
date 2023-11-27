DROP TABLE IF EXISTS Frequency_heard CASCADE;
DROP TABLE IF EXISTS Users CASCADE;
DROP TABLE IF EXISTS Songs CASCADE;
DROP TABLE IF EXISTS Albums CASCADE;
DROP TABLE IF EXISTS Artists CASCADE;
DROP DOMAIN IF EXISTS GENRETYPE CASCADE;

CREATE DOMAIN GENRETYPE AS
VARCHAR(50)
CHECK (
    value = 'Rock'
    OR value = 'Pop'
    OR value = 'Rap'
);

CREATE TABLE Artists(
    Artist_Id INT NOT NULL,
    Artist_Name VARCHAR(100) NOT NULL,
    Total_albums INT,
    Total_songs INT,
    PRIMARY KEY(Artist_Id)
);

CREATE TABLE Albums(
    Album_Id INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Artist_Id INT NOT NULL,
    Duration TIME NOT NULL,
    Release_Date DATE,
    No_of_tracks INT NOT NULL,
    Genre GENRETYPE,
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

CREATE TABLE Users(
    Username VARCHAR(10) NOT NULL,
    Pass VARCHAR(10) NOT NULL,
    PRIMARY KEY(Username)
);

CREATE TABLE Frequency_heard(
    Username VARCHAR(10) NOT NULL,
    Album_Id INT NOT NULL,
    Track_No INT NOT NULL,
    Count INT NOT NULL,
    PRIMARY KEY(Username, Album_Id, Track_No),
    FOREIGN KEY(Username) REFERENCES Users(Username),
    FOREIGN KEY(Album_Id, Track_No) REFERENCES Songs(Album_Id, Track_No)
);

CREATE OR REPLACE VIEW Artist_Listens AS
SELECT Artist_Id, SUM(Count) AS No_of_listens
FROM Albums JOIN (SELECT Album_Id, SUM(Count) AS Count
                  FROM Frequency_heard
                  GROUP BY Album_Id) AS Listens USING (Album_Id)
GROUP BY Artist_Id;