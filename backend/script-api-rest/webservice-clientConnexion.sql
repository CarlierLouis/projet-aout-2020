CREATE PROCEDURE "DBA"."codeClientsConnexion"()
RESULT (code VARCHAR (30))
BEGIN 
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    SELECT code from codeClients
END;

CREATE SERVICE "clientConnexion" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call codeClientsConnexion();