USE krautundrueben;

SELECT ZUTAT.ZUTATENNR, ZUTAT.BEZEICHNUNG FROM ZUTAT

LEFT JOIN REZEPTZUTATEN ON REZEPTZUTATEN.ZUTATENNR = ZUTAT.ZUTATENNR

WHERE REZEPTZUTATEN.ZUTATENNR IS NULL;