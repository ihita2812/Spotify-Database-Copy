CREATE OR REPLACE FUNCTION Authenticate_user(usernamex VARCHAR(10), passx VARCHAR(10))
    RETURNS INT
    LANGUAGE plpgsql
    AS
$$
DECLARE
    success INT;
    passy VARCHAR(10);
BEGIN
    SELECT Pass
    INTO passy
    FROM Users
    WHERE Username = usernamex;

    IF NOT FOUND THEN
        RAISE NOTICE 'Username not found.';
    ELSE
        IF passy = passx THEN
            success := 1;
        ELSE
            success := 0;
        END IF;
    END IF;

    RETURN success;
END
$$;

--------------------------------------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION Register_user(usernamex VARCHAR(10), passx VARCHAR(10))
    RETURNS INT
    LANGUAGE plpgsql
    AS
$$
DECLARE
    user_exists BOOLEAN;
BEGIN
    -- Check if the username already exists
    SELECT EXISTS (SELECT 1 FROM Users WHERE Username = usernamex) INTO user_exists;

    IF user_exists THEN
        -- Username already exists
        RAISE NOTICE 'Same username already exists! Try another one.';
        RETURN 0;
    ELSE
        -- Username does not exist, insert into the Users table
        INSERT INTO Users
        VALUES (usernamex, passx);
        RETURN 1;
    END IF;
END
$$;
