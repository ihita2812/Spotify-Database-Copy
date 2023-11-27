CREATE OR REPLACE FUNCTION Top_artists(countx INT)
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens INT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, No_of_listens
    FROM Artists JOIN (SELECT * FROM Artist_Listens) AS Listens USING (Artist_Id)
    ORDER BY No_of_listens DESC
    LIMIT countx;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Artist_count(artistx VARCHAR(100))
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens INT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, Total_albums AS No_of_albums, No_of_listens
    FROM Artists JOIN (SELECT * FROM Artist_Listens) AS Listens USING (Artist_Id)
    WHERE Artist_Name = artistx
    ORDER BY No_of_listens DESC;
END
$$;

--------------------------------------------------------------------------------------------------------
----------------------------------THIS FUNCTION IS VERY WRONG!!!!---------------------------------------

CREATE OR REPLACE FUNCTION Top_artists_genre()
    RETURNS TABLE(
        Genre VARCHAR(50),
        Top_Artist VARCHAR(100)
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Genre, Artist_Name AS Top_Artist
    FROM Artists JOIN (SELECT Genre, Artist_Id
                        FROM (SELECT * FROM Artist_Listens) AS Listens
                        WHERE No_of_listens = MAX(No_of_listens)
                        GROUP BY Genre) AS Listen USING (Artist_Id);
END
$$;

--------------------------------------------------------------------------------------------------------
----------------------------------ADD PROCEDURE USAGE HERE!!!!!!!---------------------------------------

CREATE OR REPLACE FUNCTION User_top_genre(userx VARCHAR(10))
    RETURNS TABLE(
        Genre GENRETYPE,
        No_of_listens INT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Genre, SUM(Count) AS No_of_listens
    FROM Albums JOIN (SELECT *
                        FROM  Frequency_heard
                        WHERE Username = userx) AS User_listens USING(Album_Id)
    GROUP BY Genre
    ORDER BY No_of_listens DESC
    LIMIT 3;
END
$$;

--------------------------------------------------------------------------------------------------------
----------------------------------ADD PROCEDURE USAGE HERE!!!!!!!---------------------------------------

CREATE OR REPLACE FUNCTION User_top_artists(userx VARCHAR(10))
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens INT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, No_of_listens
    FROM Artists JOIN (SELECT Artist_Id, SUM(Count) AS No_of_listens
                        FROM Albums JOIN (SELECT *
                                            FROM  Frequency_heard
                                            WHERE Username = userx) AS User_listens USING(Album_Id)
                        GROUP BY Artist_Id
                        ORDER BY No_of_listens DESC
                        LIMIT 3) AS User_artists_ids USING (Artist_Id);
END
$$;

--------------------------------------------------------------------------------------------------------
----------------------------------ADD PROCEDURE USAGE HERE!!!!!!!---------------------------------------

CREATE OR REPLACE FUNCTION User_top_songs(userx VARCHAR(10))
    RETURNS TABLE(
        Song VARCHAR(100),
        Artist VARCHAR(100),
        No_of_listens INT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Song, Artists.Artist_Name AS Artist, No_of_listens
    FROM Artists JOIN (SELECT Songs.Title AS Song, Albums.Artist_Id AS Artidt_Id, User_listens.Count AS No_of_listens
                        FROM Songs JOIN (SELECT *
                                            FROM  Frequency_heard
                                            WHERE Username = userx) AS User_listens USING(Album_Id, Track_No) JOIN Albums USING(Album_Id, Track_No)
                        LIMIT 15) AS artistids USING (Artist_Id)
    ORDER BY No_of_listens DESC;
END
$$;

--------------------------------------------------------------------------------------------------------




