----------------------------------------------------------------------------
----------- Script de suppression des données insérées dans le DWH ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_DWH";


-- Suppression des ventes
TRUNCATE "FAIT_VENTE";

-- Réinitialiser le numéro de séquence : Vente
ALTER SEQUENCE "FAIT_VENTE_ID_FAIT_VENTE_seq" RESTART WITH 1;

-- Suppression des clients
TRUNCATE "DIM_CLIENT" CASCADE;

-- Réinitialiser le numéro de séquence : Client
ALTER SEQUENCE "DIM_CLIENT_ID_DIM_CLIENT_seq" RESTART WITH 1;

-- Suppression des produits
TRUNCATE "DIM_PRODUIT" CASCADE; 

-- Réinitialiser le numéro de séquence : Porduit
ALTER SEQUENCE "DIM_PRODUIT_ID_DIM_PRODUIT_seq" RESTART WITH 1;


-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_ODS";

-- Mise à jour du champ : BL_LIGNE_IN_DWH
UPDATE "VENTE_ODS"."ODS_VENTE" SET "BL_LIGNE_IN_DWH" = FALSE;
