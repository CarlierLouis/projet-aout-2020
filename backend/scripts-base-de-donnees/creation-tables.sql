CREATE TABLE "DBA"."administrateurs" (
	"id_administrateur" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"pseudo" VARCHAR(30) NULL,
	"mp" VARCHAR(30) NULL,
	PRIMARY KEY ( "id_administrateur" ASC )
) IN "system";


CREATE TABLE "DBA"."typesMets" (
	"id_typeMets" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nomTypeMets" VARCHAR(100) NULL,
	PRIMARY KEY ( "id_typeMets" ASC )
) IN "system";

CREATE TABLE "DBA"."mets" (
	"id_mets" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nomMets" VARCHAR(100) NOT NULL UNIQUE,
	"description" LONG VARCHAR NULL,
	"id_typeMets" INTEGER NULL,
	PRIMARY KEY ( "id_mets" ASC )
) IN "system";



ALTER TABLE "DBA"."mets" ADD CONSTRAINT "typesMets" FOREIGN KEY ( "id_typeMets" ASC ) REFERENCES "DBA"."typesMets" ( "id_typeMets" );

