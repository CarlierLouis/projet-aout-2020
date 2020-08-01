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


CREATE TABLE "DBA"."suggestions" (
	"id_suggestion" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"descSuggestion" LONG VARCHAR NULL,
	"id_typeMets" INTEGER NULL,
	PRIMARY KEY ( "id_suggestion" ASC )
) IN "system";


CREATE TABLE "DBA"."codesClients" (
	"id_codeClients" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"code" VARCHAR(30) NULL,
	PRIMARY KEY ( "id_codeClients" ASC )
) IN "system";


ALTER TABLE "DBA"."mets" ADD CONSTRAINT "typesMets" FOREIGN KEY ( "id_typeMets" ASC ) REFERENCES "DBA"."typesMets" ( "id_typeMets" );

ALTER TABLE "DBA"."suggestions" ADD CONSTRAINT "fk_sugg_typesMets" FOREIGN KEY ( "id_typeMets" ASC ) REFERENCES "DBA"."typesMets" ( "id_typeMets" );