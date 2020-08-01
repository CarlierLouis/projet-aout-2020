CREATE PROCEDURE "DBA"."chargementSuggestions"()
result(id_suggestion char(4),descSuggestion char(300),nomTypeMets char(4))
BEGIN   
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select id_suggestion,descSuggestion,t2.nomtypeMets from suggestions as t1
    natural join tyeMets as t2 on t1.id_typeMets=t2.id_typeMets;
end;


CREATE SERVICE "chargSuggestions" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call chargementSuggestions();