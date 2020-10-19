USE krautundrueben;

SELECT REZEPTE.REZEPTNR, REZEPTE.REZEPT, ALLERGENE.ALLERGENNR, ALLERGENE.ALLERGEN
FROM(( REZEPTE

INNER JOIN REZEPTALERGENE ON REZEPTE.REZEPTNR = REZEPTALERGENE.REZEPTNR)
INNER JOIN ALLERGENE ON REZEPTALERGENE.ALLERGENNR = ALLERGENE.ALLERGENNR)

WHERE ALLERGEN != "Gluten";