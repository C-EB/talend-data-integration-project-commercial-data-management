----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------

-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_DWH";


----------------------------------------------------------------------------
------------ Table dimensionnelle N°1 : "VENTE_DWH"."DIM_PRODUIT" ----------
----------------------------------------------------------------------------

-- DROP TABLE IF EXISTS "DIM_PRODUIT" ;
CREATE TABLE "DIM_PRODUIT" 
(
	"ID_DIM_PRODUIT"	 SERIAL 	  NOT NULL,
	"CD_PRODUIT" 		 VARCHAR(50)  NOT NULL,
	"NOM_PRODUIT" 		 VARCHAR(255) NOT NULL,
	"PRIX_ACHAT_PRODUIT" NUMERIC      NOT NULL,
	"PRIX_VENTE_PRODUIT" NUMERIC 	  NOT NULL,
	"CD_SOUS_CATEGORIE"  VARCHAR(50)  NOT NULL,
	"LB_SOUS_CATEGORIE"  VARCHAR(100) NOT NULL,
	"CD_CATEGORIE"    	 VARCHAR(50)  NOT NULL,	
	"LB_CATEGORIE"       VARCHAR(100) NOT NULL,
	"DT_INSERTION"    	 TIMESTAMP    NOT NULL,
	"DT_MISE_A_JOUR"	 TIMESTAMP    ,
	"BL_LIGNE_ACTIVE" 	 INTEGER      NOT NULL,
	"LB_JOB_NAME"	  	 VARCHAR(100) NOT NULL,
	CONSTRAINT "DIM_PRODUIT_PKEY" PRIMARY KEY ("ID_DIM_PRODUIT")
);



----------------------------------------------------------------------------
------------ Table dimensionnelle N°2 : "VENTE_DWH"."DIM_CLIENT" -----------
----------------------------------------------------------------------------

-- DROP TABLE IF EXISTS "DIM_CLIENT" ;
CREATE TABLE "DIM_CLIENT" 
(
	"ID_DIM_CLIENT"	    SERIAL 	  	 NOT NULL,
	"ID_CLIENT"		    VARCHAR(50)  NOT NULL,
	"NOM_CLIENT" 		VARCHAR(100) NOT NULL,
	"PREN_CLIENT" 		VARCHAR(100) NOT NULL,
	"CD_POSTAL_CLIENT"  VARCHAR(100) ,
	"VILLE_CLIENT" 		VARCHAR(100) NOT NULL,
	"PAYS_CLIENT" 		VARCHAR(100) NOT NULL,
	"REGION_CLIENT" 	VARCHAR(100) NOT NULL,
	"CD_TYPE_CLIENT" 	VARCHAR(50)  NOT NULL,
	"LB_TYPE_CLIENT"  	VARCHAR(100) NOT NULL,
	"DT_INSERTION"    	TIMESTAMP    NOT NULL,
	"DT_MISE_A_JOUR"	TIMESTAMP    ,
	"BL_LIGNE_ACTIVE" 	INTEGER      NOT NULL,
	"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL,
	CONSTRAINT "DIM_CLIENT_PKEY" PRIMARY KEY ("ID_DIM_CLIENT")
);


----------------------------------------------------------------------------
---------- Table dimensionnelle N°3 : "VENTE_DWH"."DIM_CALENDRIER" ---------
----------------------------------------------------------------------------

-- DROP TABLE "I_OPE"."DIM_CALENDRIER";
CREATE TABLE "DIM_CALENDRIER"
(
    "ID_DIM_CALENDRIER" 	INTEGER NOT NULL,
    "DT_JOUR"			 	DATE NOT NULL,
    "NB_ANNEE" 				INTEGER NOT NULL,
    "NB_SEMESTRE" 			INTEGER NOT NULL,
    "NB_TRIMESTRE" 			INTEGER NOT NULL,
    "NB_MOIS" 				INTEGER NOT NULL,
    "NB_JOUR_ANNEE" 		INTEGER NOT NULL,
    "NB_JOUR_MOIS" 			INTEGER NOT NULL,
    "NB_JOUR_SEMAINE" 		INTEGER NOT NULL,
    "NB_SEMAINE_ANNEE" 		INTEGER NOT NULL,
    "LB_MOIS" 				VARCHAR(100) NOT NULL,
    "LB_JOUR" 			    VARCHAR(100) NOT NULL,
    "BL_DERNIER_JOUR_MOIS"  INTEGER NOT NULL,
    "BL_BISSEXTILE" 		INTEGER NOT NULL,
    "BL_WEEK_END" 			INTEGER NOT NULL,
    "BL_JOUR_FERIE" 		INTEGER NOT NULL,
    "LB_JOUR_FERIE" 		VARCHAR(100),
    CONSTRAINT "DIM_CALENDRIER_PKEY" PRIMARY KEY ("ID_DIM_CALENDRIER")
);


----------------------------------------------------------------------------
----------------- Table de faits : "VENTE_DWH"."FAIT_VENTE" -----------------
----------------------------------------------------------------------------

-- DROP TABLE IF EXISTS "FAIT_VENTE" ;
CREATE TABLE "FAIT_VENTE" 
(
	"ID_FAIT_VENTE"		SERIAL    NOT NULL,
	"ID_DIM_PRODUIT"	INTEGER   NOT NULL,
	"ID_DIM_CLIENT"	    INTEGER   NOT NULL,
	"ID_DIM_CALENDRIER" INTEGER   NOT NULL,
	"NB_VENTE" 	 		INTEGER   NOT NULL,
	"NB_QTE_VENTE" 	 	INTEGER   NOT NULL,
	"NB_MT_ACHAT" 	 	NUMERIC   NOT NULL,
	"NB_MT_VENTE" 	 	NUMERIC   NOT NULL,
	"DT_INSERTION"    	TIMESTAMP NOT NULL,
	"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL,
	CONSTRAINT "FAIT_VENTE_PKEY" PRIMARY KEY ("ID_FAIT_VENTE"), 
	CONSTRAINT "FAIT_VENTE_CLIENT_FKEY" FOREIGN KEY ("ID_DIM_CLIENT") REFERENCES "DIM_CLIENT" ("ID_DIM_CLIENT"),	
	CONSTRAINT "FAIT_VENTE_PRODUIT_FKEY" FOREIGN KEY ("ID_DIM_PRODUIT") REFERENCES "DIM_PRODUIT" ("ID_DIM_PRODUIT"),
	CONSTRAINT "FAIT_VENTE_CALENDRIER_FKEY" FOREIGN KEY ("ID_DIM_CALENDRIER") REFERENCES "DIM_CALENDRIER" ("ID_DIM_CALENDRIER")	
);