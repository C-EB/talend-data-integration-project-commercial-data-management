----------------------------------------------------------------------------
--------- Script d'insertion de données dans les tables paramètres ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
-------- Requête N°1 : Insertion initiale des paramètres de contexte -------
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('serverName','localhost'),
('database','COM_INGESTION_DB'),
('port','5433'),
('schema_ods','VENTE_ODS'),
('utilisateur','postgres'),
('password','votreMotDePasse'),
('additionalParam',''),
('schema_param','PARAMS_LOG'),
('projectFolder','C:/PROJET_TALEND/ICOMMERCE/'),
('fieldSeparator','|'),
('encodage','UTF-8');