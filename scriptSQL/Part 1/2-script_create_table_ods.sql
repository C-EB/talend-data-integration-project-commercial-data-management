----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------

-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_ODS";


----------------------------------------------------------------------------
----------------- Table N°1 : "VENTE_ODS"."ODS_TYPE_CLIENT" ----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_TYPE_CLIENT" ;
CREATE TABLE "ODS_TYPE_CLIENT" 
(
"CD_TYPE_CLIENT"  VARCHAR(50)  NOT NULL,
"LB_TYPE_CLIENT"  VARCHAR(100) NOT NULL,
"LB_NOM_FICHIER"  VARCHAR(100) NOT NULL,	
"DT_INSERTION"    TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" INTEGER      NOT NULL,
"LB_JOB_NAME"	  VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
------------------ Table N°2 : "VENTE_ODS"."ODS_CATEGORIE" -----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_CATEGORIE" ;
CREATE TABLE "ODS_CATEGORIE" 
(
"CD_CATEGORIE"    VARCHAR(50)  NOT NULL,
"LB_CATEGORIE"    VARCHAR(100) NOT NULL,
"LB_NOM_FICHIER"  VARCHAR(100) NOT NULL,	
"DT_INSERTION"    TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" INTEGER      NOT NULL,
"LB_JOB_NAME"	  VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
---------------- Table N°3 : "VENTE_ODS"."ODS_SOUS_CATEGORIE" --------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_SOUS_CATEGORIE" ;
CREATE TABLE "ODS_SOUS_CATEGORIE" 
(
"CD_SOUS_CATEGORIE" VARCHAR(50)  NOT NULL,
"LB_SOUS_CATEGORIE" VARCHAR(100) NOT NULL,
"CD_CATEGORIE"    	VARCHAR(50)  NOT NULL,	
"LB_NOM_FICHIER"  	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" 	INTEGER      NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
-------------------- Table N°4 : "VENTE_ODS"."ODS_PRODUIT" -----------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_PRODUIT" ;
CREATE TABLE "ODS_PRODUIT" 
(
"CD_PRODUIT" 		 VARCHAR(50)  NOT NULL,
"NOM_PRODUIT" 		 VARCHAR(255) NOT NULL,
"PRIX_ACHAT_PRODUIT" NUMERIC      NOT NULL,
"PRIX_VENTE_PRODUIT" NUMERIC 	  NOT NULL,
"CD_SOUS_CATEGORIE"  VARCHAR(50)  NOT NULL,
"LB_NOM_FICHIER"  	 VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	 TIMESTAMP 	  NOT NULL,
"BL_LIGNE_ACTIVE" 	 INTEGER 	  NOT NULL,
"LB_JOB_NAME"	  	 VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
-------------------- Table N°5 : "VENTE_ODS"."ODS_CLIENT" ------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_CLIENT" ;
CREATE TABLE "ODS_CLIENT" 
(
"ID_CLIENT"		    VARCHAR(50)  NOT NULL,
"NOM_CLIENT" 		VARCHAR(100) NOT NULL,
"PREN_CLIENT" 		VARCHAR(100) NOT NULL,
"CD_POSTAL_CLIENT"  VARCHAR(100) ,
"VILLE_CLIENT" 		VARCHAR(100) NOT NULL,
"PAYS_CLIENT" 		VARCHAR(100) NOT NULL,
"REGION_CLIENT" 	VARCHAR(100) NOT NULL,
"CD_TYPE_CLIENT" 	VARCHAR(50)  NOT NULL,
"LB_NOM_FICHIER"  	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"BL_LIGNE_ACTIVE" 	INTEGER      NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
--------------------- Table N°6 : "VENTE_ODS"."ODS_VENTE" ------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_VENTE" ;
CREATE TABLE "ODS_VENTE" 
(
"ID_VENTE" 		 	VARCHAR(50)  NOT NULL,
"CD_PRODUIT" 	 	VARCHAR(50)  NOT NULL,	
"DT_VENTE" 			TIMESTAMP    NOT NULL,
"ID_CLIENT" 	 	VARCHAR(50)  NOT NULL,
"QTE_VENTE" 	 	INTEGER      NOT NULL,
"PRIX_ACHAT" 	 	NUMERIC      NOT NULL,
"PRIX_VENTE" 	 	NUMERIC      NOT NULL,
"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,	
"DT_INSERTION"    	TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);


----------------------------------------------------------------------------
--------------------- Table N°7 : "VENTE_ODS"."ODS_REJET" ------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "ODS_REJET" ;
CREATE TABLE "ODS_REJET" 
(
"LB_CHEMIN_FICHIER" VARCHAR(255) NOT NULL,
"LB_NOM_FICHIER" 	VARCHAR(100) NOT NULL,	
"NUM_LIGNE_REJET" 	INTEGER      NOT NULL,
"LB_LIGNE_REJET" 	VARCHAR(500) NOT NULL,
"LB_MESSAGE_REJET" 	VARCHAR(100) NOT NULL,
"LB_NOM_FLUX"		VARCHAR(100) NOT NULL,
"DT_REJET"    		TIMESTAMP    NOT NULL,
"LB_JOB_NAME"	  	VARCHAR(100) NOT NULL
);