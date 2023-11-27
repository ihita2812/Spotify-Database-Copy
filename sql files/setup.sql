DROP TABLE IF EXISTS Artists;
DROP TABLE IF EXISTS Albums;
DROP TABLE IF EXISTS Songs;
DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Frequency_heard;

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

CREATE TABLE Users(
    User_Id INT NOT NULL,
    Username VARCHAR(10) NOT NULL,
    Pass VARCHAR(10) NOT NULL,
    PRIMARY KEY(User_Id)
);

CREATE TABLE Frequency_heard(
    User_Id INT NOT NULL,
    Album_Id INT NOT NULL,
    Track_No INT NOT NULL,
    Count INT NOT NULL,
    PRIMARY KEY(User_Id, Album_Id, Track_No),
    FOREIGN KEY(User_Id) REFERENCES Users(User_Id),
    FOREIGN KEY(Album_Id, Track_No) REFERENCES Songs(Album_Id, Track_No)
);

CREATE OR REPLACE VIEW Artist_Listens AS
SELECT Artist_Id, Genre, SUM(Count) AS No_of_listens
FROM Albums JOIN (SELECT Album_Id, SUM(Count) AS Count
                  FROM Frequency_heard
                  GROUP BY Album_Id) USING (Album_Id)
GROUP BY Artist_Id;