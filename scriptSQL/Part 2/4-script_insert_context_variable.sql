----------------------------------------------------------------------------
--------- Script d'insertion de données dans les tables paramètres ---------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
----- Requête N°1 : Insertion des paramètres de contexte relatif au DWH ----
----------------------------------------------------------------------------
INSERT INTO "CONTEXTE"
VALUES 
('schema_dwh','VENTE_DWH'),
('dtDebCalendrier','2020-01-01 00:00:00'),
('dtFinCalendrier','2025-12-31 00:00:00'),
('nbJoursCalendrier','0');

