CREATE PROCEDURE "DBA"."administrateurConnexion"()
RESULT (pseudo VARCHAR (30), mp VARCHAR (30))
BEGIN 
    SELECT pseudo, mp from administrateurs
END;

CREATE SERVICE "adminConnexion" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call administrateurConnexion();