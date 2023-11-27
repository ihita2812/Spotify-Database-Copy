CREATE OR REPLACE FUNCTION Authenticate_user(usernamex VARCHAR(10), passx VARCHAR(10))

DECLARE
    sucess INT;
    passy VARCHAR(10);

BEGIN
    SELECT Pass
    INTO passy
    FROM Users
    WHERE Username = usernamex;
    IF NOT FOUND THEN
        RAISE NOTICE 'Username not found. ';
    IF passy = passx THEN
        sucess := 1;
    ELSE
        sucess := 0;
    RETURN passy;