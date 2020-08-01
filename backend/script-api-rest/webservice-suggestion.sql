CREATE PROCEDURE "DBA"."suggestionClients"(in adescSuggestion varchar(1000),aid_typeMets INTEGER )                 
BEGIN
  Call sa_set_http_header('Access-Control-Allow-Origin', '*');
  INSERT INTO suggestions(descSuggestion,id_typeMets) VALUES (adescSuggestion,aid_typeMets);
END;

CREATE SERVICE "suggestion" TYPE 'RAW' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call suggestionClients(:descSuggestion,:id_typeMets);