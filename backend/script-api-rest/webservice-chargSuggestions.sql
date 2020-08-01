ALTER PROCEDURE "DBA"."chargementSuggestions"()
result(id_suggestion char(4),descSuggestion char(300),nomTypeMets char(4))
BEGIN   
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select id_suggestion,descSuggestion,id_typeMets from suggestions
end


CREATE SERVICE "chargSuggestions" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call chargementSuggestions();