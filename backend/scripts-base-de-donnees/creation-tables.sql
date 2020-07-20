CREATE TABLE "DBA"."administrateurs" (
	"id_administrateur" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"pseudo" VARCHAR(30) NULL,
	"mp" VARCHAR(30) NULL,
	PRIMARY KEY ( "id_administrateur" ASC )
) IN "system";