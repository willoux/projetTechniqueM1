-- ---------------------------------------------------------------------------------------------------------
-- DONNEES ALEATOIRES 
-----------------------------------------------------------------------------------------------------------

-- Exemple de génération de valeurs aléatoires
/*
SELECT *
FROM
generate_series(1, 5, 1);
*/
-- génère 5 lignes

-- La fonction generate_series est utilisée dans ce qui suit,
-- pour générer une série de valeurs entières.
-----------------------------------------------------------------------------------------------------------

-- La commande SQL ci-après génère des lignes inutiles.
-- Le but est de noyer l'information utile dans un grand nombre
-- de lignes, afin de mieux mettre en évidence les effets des index.

-- Exemple de lignes inutiles:
-- SELECT generate_series(20, 25, 1), generate_series(20, 25, 1),
-- 'Modele bidon ' || generate_series(20, 25, 1), 'Unite bidon ' || generate_series(20, 25, 1);

INSERT INTO studio (id_studio, nom_studio, date_creation)
(SELECT generate_series(1000, 6000000, 1),
'The Mega Studio Company in California' || generate_series(1000, 6000000, 1), '1970-01-01');
-- avec d'autres SGBDR, il faut utiliser les fonctions idoines,
-- car generate_series est une specificité de PostgreSQL.
 
-- quelques valeurs spécifiques en plus
INSERT INTO studio (id_studio, nom_studio, date_creation)
	VALUES (10000001, 'Lionsgate', '1997-01-01');
INSERT INTO studio (id_studio, nom_studio, date_creation)
	VALUES (10000002, 'Miramax', '1979-01-01');
INSERT INTO studio (id_studio, nom_studio, date_creation)
	VALUES (10000003, 'The Weinstein Company', '2005-10-05');
