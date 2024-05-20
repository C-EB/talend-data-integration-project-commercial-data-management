----------------------------------------------------------------------------
----------- Script de suppression des données insérées dans l'ODS ----------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "VENTE_ODS";


-- Suppression des types client
TRUNCATE "ODS_TYPE_CLIENT";

-- Suppression des catégories
TRUNCATE "ODS_CATEGORIE";

-- Suppression des sous-catégories
TRUNCATE "ODS_SOUS_CATEGORIE";

-- Suppression des produits
TRUNCATE "ODS_PRODUIT";

-- Suppression des clients
TRUNCATE "ODS_CLIENT";

-- Suppression des ventes
TRUNCATE "ODS_VENTE";

-- Suppression des rejets
TRUNCATE  "ODS_REJET";