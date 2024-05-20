----------------------------------------------------------------------------
------------ Script de sélection des données insérées dans le DWH ----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_DWH";


-- Liste des produits
SELECT * FROM "DIM_PRODUIT";

-- Liste des clients
SELECT * FROM "DIM_CLIENT";

-- Liste des ventes
SELECT * FROM "FAIT_VENTE";

-- Calendrier
SELECT * FROM "DIM_CALENDRIER";


-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_ODS";

SELECT * FROM "ODS_VENTE";