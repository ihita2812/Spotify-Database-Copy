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
    SELECT Artist_Name AS Artist, Genre, Count
    FROM Artists JOIN (SELECT Genre, Artist_Id, Count
                        FROM (SELECT Artist_Id, Genre, Count
                        FROM Albums JOIN (SELECT Album_Id, SUM(Count) AS Count
                                            FROM Frequency_heard
                                            GROUP BY Album_Id) AS Album_listens USING (Album_Id))
                        WHERE Count = MAX(Count)
                        GROUP BY Genre) AS artistids USING (Artist_Id)
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
    FROM Artists JOIN (SELECT Songs.Title AS Song, Albums.Artist_Id AS Artist_Id, User_listens.Count AS No_of_listens
                        FROM Songs JOIN (SELECT *
                                            FROM  Frequency_heard
                                            WHERE Username = userx) AS User_listens USING(Album_Id, Track_No) JOIN Albums USING(Album_Id, Track_No)
                        LIMIT 15) AS artistids USING (Artist_Id)
    ORDER BY No_of_listens DESC;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_listen_song(songx VARCHAR(100))
    RETURNS TABLE(
        Album_Id INT,
        Album VARCHAR(100),
        Track_No INT,
        Song VARCHAR(100),
        Artist VARCHAR(100)
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Album_Id, Albums.Title AS Album, Track_No, songids.Title AS Song, Artist_Name AS Artist
    FROM Albums JOIN (SELECT Album_Id, Track_No, Title
                        FROM Songs
                        WHERE Title = songx) AS songids USING (Album_Id)
    ORDER BY Album_Id;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_listen_id(albumidx INT, tracknox INT, userx VARCHAR(10))
    RETURNS INT
    LANGUAGE plpgsql
    AS
$$
BEGIN
SELECT *
FROM Songs
WHERE Album_Id = albumidx AND Track_No = tracknox;
IF NOT FOUND THEN
    RAISE NOTICE 'No such track exists.';
    RETURN -1;
ELSE
    SELECT *
    FROM Frequency_heard
    WHERE Username = userx AND Album_Id = albumidx AND Track_No = tracknox;
    IF FOUND THEN
        UPDATE Frequency_heard
        SET Count = Count + 1
        WHERE Username = userx AND Album_Id = albumidx AND Track_No = tracknox;
        RETURN 0;
    ELSE
        INSERT INTO Frequency_heard
        VALUES (userx, albumidx, tracknox, 1);
        RETURN 1;
    END IF;
END IF;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_recommend(userx VARCHAR(10))
