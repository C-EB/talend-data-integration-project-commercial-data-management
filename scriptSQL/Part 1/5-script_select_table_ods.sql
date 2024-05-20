----------------------------------------------------------------------------
------------ Script de sélection des données insérées dans l'ODS -----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_ODS";


-- Liste des types client
SELECT * FROM "ODS_TYPE_CLIENT";

-- Liste des catégories
SELECT * FROM "ODS_CATEGORIE";

-- Liste des sous-catégories
SELECT * FROM "ODS_SOUS_CATEGORIE";

-- Liste des produits
SELECT * FROM "ODS_PRODUIT";

-- Liste des clients
SELECT * FROM "ODS_CLIENT";

-- Liste des ventes
SELECT * FROM "ODS_VENTE";

-- Liste des rejets
SELECT * FROM "ODS_REJET";