/* ------------------- By Name ------------------- */

SELECT * FROM REZEPTE WHERE REZEPT = "Indisches Kichererbsen-Curry";

/* ------------------- All Rezepte by Ernährungskategorie ------------------- */

SELECT * FROM REZEPTKATEGORIEN WHERE KATEGORIENR = 2;

/* ------------------- All Rezepte by Zutat ------------------- */

SELECT * FROM REZEPTZUTATEN WHERE ZUTATENNR = 1002;

/* ------------------- Rezept by Zutat ------------------- */

/*
SELECT BESTELLNR FROM BESTELLUNG WHERE KUNDENNR = 2003
SELECT ZUTATENNR FROM BESTELLUNGZUTAT WHERE BESTELLNR = 3
*/

SELECT BESTELLUNG.BESTELLNR, BESTELLUNGZUTAT.BESTELLNR
FROM BESTELLUNG
INNER JOIN BESTELLUNGZUTAT ON BESTELLUNG.BESTELLNR = BESTELLUNGZUTAT.BESTELLNR;
