CREATE PROCEDURE "DBA"."modificationCarte"(in anomMets varchar(100),adescription varchar(1000),aid_typeMets INTEGER )                 
BEGIN
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  INSERT INTO mets(nomMets,description,id_typeMets) VALUES (anomMets,adescription,aid_typeMets);
END;

CREATE SERVICE "modifCarte" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call modificationCarte(:nomMets,:description,:id_typeMets);