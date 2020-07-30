CREATE PROCEDURE "DBA"."chargerTypeMets"()
result(typeMets char(50),id_typeMets INTEGER )
BEGIN 

    SELECT nomTypeMets,id_typeMets from typesMets

end;

CREATE SERVICE "typeMets" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call chargerTypeMets();