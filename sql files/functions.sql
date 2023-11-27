CREATE OR REPLACE FUNCTION Top_artists(count INT)
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens INT
    )
RETURN TABLE(
    SELECT TOP Top_artists.count Artist_Name AS Artist, No_of_listens
    FROM Artists JOIN (SELECT Artist_Id, No_of_listens FROM Artist_Listens) USING (Artist_Id)
    ORDER BY No_of_listens DESC
);

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Artist_count(artist VARCHAR(100))
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens INT
    )
RETURN TABLE(
    SELECT Artist_Name AS Artist, Total_albums AS No_of_albums, No_of_listens
    FROM Artists JOIN (SELECT Artist_Id, No_of_listens FROM Artist_Listens) USING (Artist_Id)
    WHERE Artist_Name = Artist_count.artist
    ORDER BY No_of_listens DESC
);

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Top_artists_genre()
    RETURNS TABLE(
        Genre VARCHAR(50),
        Top_Artist VARCHAR(100)
    )
RETURN TABLE(
    SELECT Genre, Artist_Name AS Top_Artist
    FROM Artists JOIN (SELECT Genre, Artist_Id
                        FROM (SELECT * FROM Artist_Listens)
                        WHERE No_of_listens = MAX(No_of_listens)
                        GROUP BY Genre) USING (Artist_Id)
);

--------------------------------------------------------------------------------------------------------

