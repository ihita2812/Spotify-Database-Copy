CREATE OR REPLACE FUNCTION Update_Songs()
    RETURNS TRIGGER
    LANGUAGE plpgsql
    AS
$$
BEGIN
UPDATE Songs
SET Times_heard = NEW.Count
WHERE Album_Id = NEW.Album_Id AND Track_No = NEW.Track_No;
RETURN NEW;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER UpdateSongs
AFTER UPDATE OR INSERT ON Frequency_heard
EXECUTE FUNCTION Update_Songs();

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Top_artists(countx INT)
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens NUMERIC
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, Listens.No_of_listens
    FROM Artists JOIN (SELECT * FROM Artist_Listens) AS Listens USING (Artist_Id)
    ORDER BY No_of_listens DESC
    LIMIT countx;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Artist_count(artistx VARCHAR(100))
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_albums INT,
        No_of_listens NUMERIC
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, Total_albums AS No_of_albums, Listens.No_of_listens
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
    FROM Artists JOIN (SELECT unga.Genre, Artist_Id, Count
                        FROM (SELECT Artist_Id, Albums.Genre, Count
                                FROM Albums JOIN (SELECT Album_Id, SUM(Count) AS Count
                                                    FROM Frequency_heard
                                                    GROUP BY Album_Id) AS Album_listens USING (Album_Id)) as unga
                        GROUP BY unga.Genre
                        HAVING Count = MAX(Count)) AS artistids USING (Artist_Id) as ungabunga;
END
$$;

CREATE OR REPLACE FUNCTION Top_artists_genre()
RETURNS TABLE (Genre GENRETYPE, Artist_Name VARCHAR(100)) AS
$$
BEGIN
    RETURN QUERY
    WITH RankedArtists AS (
        SELECT
            a.Artist_Name,
            al.Genre,
            ROW_NUMBER() OVER (PARTITION BY al.Genre ORDER BY SUM(fh.Count) DESC) AS rank
        FROM
            Artists a
            JOIN Albums al ON a.Artist_Id = al.Artist_Id
            LEFT JOIN Frequency_heard fh ON al.Album_Id = fh.Album_Id
        GROUP BY
            a.Artist_Id, al.Genre
    )
    SELECT
        ra.Genre,
        ra.Artist_Name
    FROM
        RankedArtists ra
        LEFT JOIN Frequency_heard fh ON ra.Artist_Name = fh.Username
    WHERE
        ra.rank = 1
    GROUP BY
        ra.Genre, ra.Artist_Name;

    RETURN;
END;
$$ LANGUAGE plpgsql;
--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_top_genre(userx VARCHAR(10))
    RETURNS TABLE(
        Genre GENRETYPE,
        No_of_listens BIGINT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Albums.Genre, SUM(Count) AS No_of_listens
    FROM Albums JOIN (SELECT *
                        FROM  Frequency_heard
                        WHERE Username = userx) AS User_listens USING(Album_Id)
    GROUP BY Albums.Genre
    ORDER BY No_of_listens DESC
    LIMIT 3;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_top_artists(userx VARCHAR(10))
    RETURNS TABLE(
        Artist VARCHAR(100),
        No_of_listens BIGINT
    )
    LANGUAGE plpgsql
    AS
$$
BEGIN
RETURN QUERY
    SELECT Artist_Name AS Artist, User_artists_ids.No_of_listens
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
    SELECT artistids.Song, Artists.Artist_Name AS Artist, artistids.No_of_listens
    FROM Artists JOIN (SELECT Songs.Title AS Song, Albums.Artist_Id AS Artist_Id, User_listens.Count AS No_of_listens
                        FROM Songs JOIN (SELECT *
                                            FROM  Frequency_heard
                                            WHERE Username = userx) AS User_listens USING(Album_Id, Track_No) JOIN Albums USING(Album_Id)
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
    SELECT albumids.Album_Id, albumids.Album AS Album, albumids.Track_No, albumids.Song AS Song, Artists.Artist_Name AS Artist
    FROM Artists JOIN (SELECT Albums.Artist_Id, Albums.Album_Id, Albums.Title AS Album, songids.Track_No, songids.Title AS Song
                        FROM Albums JOIN (SELECT Songs.Album_Id, Songs.Track_No, Songs.Title
                                            FROM Songs
                                            WHERE Songs.Title = songx) AS songids USING (Album_Id)
                        ORDER BY Albums.Album_Id) AS albumids USING (Artist_Id);
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_listen_id(albumidx INT, tracknox INT, userx VARCHAR(10))
    RETURNS BIGINT
    LANGUAGE plpgsql
AS
$$
DECLARE
    song_record Songs;  -- Declare a variable to store the result of the SELECT statement
BEGIN
    SELECT *
    INTO song_record
    FROM Songs
    WHERE Album_Id = albumidx AND Track_No = tracknox;

    IF NOT FOUND THEN
        RAISE NOTICE 'No such track exists.';
        RETURN -1;
    ELSE
        -- Check if the user has already listened to the track
        SELECT 1
        INTO song_record
        FROM Frequency_heard
        WHERE Username = userx AND Album_Id = albumidx AND Track_No = tracknox;

        IF FOUND THEN
            -- If user has listened, update the count
            UPDATE Frequency_heard
            SET Count = Count + 1
            WHERE Username = userx AND Album_Id = albumidx AND Track_No = tracknox;
            RETURN 0;
        ELSE
            -- If user has not listened, insert a new record
            INSERT INTO Frequency_heard (Username, Album_Id, Track_No, Count)
            VALUES (userx, albumidx, tracknox, 1);
            RETURN 1;
        END IF;
    END IF;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION User_recommend(userx VARCHAR(10))
    RETURNS TABLE(
        Suggested_Album VARCHAR(100),
        Suggested_song_from_album VARCHAR(100)
    )
    LANGUAGE plpgsql
    AS
$$
DECLARE
    topGenre GENRETYPE;
BEGIN
    SELECT Genre
    INTO topGenre
    FROM (SELECT Genre, SUM(Count) AS No_of_listens
            FROM Albums JOIN (SELECT *
                                FROM  Frequency_heard
                                WHERE Username = userx) AS User_listens USING(Album_Id)
            GROUP BY Genre
            ORDER BY No_of_listens DESC
            LIMIT 1) AS countis;
    RETURN QUERY
        SELECT Albums.Title AS Suggested_Album, Songs.Title AS Suggested_song_from_album
        FROM Albums JOIN Songs USING (Album_Id)
        WHERE Genre = topGenre
        ORDER BY Times_heard DESC
        LIMIT 15;
END
$$;