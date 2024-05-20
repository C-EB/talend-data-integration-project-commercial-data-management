----------------------------------------------------------------------------
----------------- Script de création des différentes tables ----------------
----------------------------------------------------------------------------
-- Définir le schéma à utiliser
SET SEARCH_PATH = "PARAMS_LOG";


----------------------------------------------------------------------------
-------------------- Table N°1 : "PARAMS_LOG"."CONTEXTE" -------------------
----------------------------------------------------------------------------
DROP TABLE IF EXISTS "CONTEXTE";
CREATE TABLE "CONTEXTE"
(
    key   VARCHAR(100) NOT NULL,
    value VARCHAR(255) ,
    CONSTRAINT "CONTEXTE_PKEY" PRIMARY KEY (key)
);