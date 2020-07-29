CREATE PROCEDURE "DBA"."modificationCarte"(in anomMet varchar(100),adescription varchar(1000),aid_typeMet INTEGER )                 
BEGIN
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  INSERT INTO mets(nomMet,description,id_typeMet) VALUES (anomMet,adescription,aid_typeMet);
END;

CREATE SERVICE "modifCarte" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call modificationCarte(:nomMet,:description,:id_typeMet);