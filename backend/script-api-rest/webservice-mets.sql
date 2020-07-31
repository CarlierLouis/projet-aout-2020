CREATE PROCEDURE "DBA"."mets"()
result(id_mets char(4), nomMets char(50), description char(300),nomTypeMets char(4))
BEGIN   
    Call sa_set_http_header('Access-Control-Allow-Origin', '*');
    select id_mets, nomMets, description,t2.nomtypeMets from mets as t1
    natural join typesMets as t2 on t1.id_typeMets=t2.id_typeMets ;
end;


CREATE SERVICE "mets" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call mets();