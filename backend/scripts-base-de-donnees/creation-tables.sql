CREATE TABLE "DBA"."administrateurs" (
	"id_administrateur" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"pseudo" VARCHAR(30) NULL,
	"mp" VARCHAR(30) NULL,
	PRIMARY KEY ( "id_administrateur" ASC )
) IN "system";


CREATE TABLE "DBA"."typesMets" (
	"id_typeMet" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nomTypeMet" VARCHAR(100) NULL,
	PRIMARY KEY ( "id_typeMet" ASC )
) IN "system";

CREATE TABLE "DBA"."mets" (
	"id_met" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"nomMet" VARCHAR(100) NOT NULL UNIQUE,
	"description" LONG VARCHAR NULL,
	"id_typeMet" INTEGER NULL,
	PRIMARY KEY ( "id_met" ASC )
) IN "system";



ALTER TABLE "DBA"."mets" ADD CONSTRAINT "typesMets" FOREIGN KEY ( "id_typeMet" ASC ) REFERENCES "DBA"."typesMets" ( "id_typeMet" );

