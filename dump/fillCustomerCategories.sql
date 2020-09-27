USE krautundrueben; -- Select DB: krautundrueben

/* ------------------- Allergene ------------------- */

INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Milch");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Ei");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Soja");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Fisch");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Erdnuss");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Haselnuss");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Sesamsamen");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Krebstiere");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Gluten");

/* ------------------- Ernährungskategorien ------------------- */

INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Vegan", "Darf keine tierischen Produkte enthalten.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Vegatarisch", "Darf kein Fleisch enthalten.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Frutarisch", "Vegetarische Ernährungsweise die auf Früchten basiert.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("ohne Gentechnik", "Darf keine Gentechnisch modifizierten Lebensmittel enthalten.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Laktosefrei", "Darf keine Milchprodukte enthalten.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Glutenfrei", "Darf kein Gluten enthalten.");
INSERT INTO ERNÄHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Low Carb", "Kohlenhydrate minimierte ernährungsweise.");

/* ------------------- Rezept 1: Indisches Kichererbsen-Curry ------------------- */

INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES ("Indisches Kichererbsen-Curry", "Zwiebel würfeln und Paprika in mittelgroße Stücke schneiden. Die Zwiebelwürfel in Öl glasig dünsten und die Paprikastücke hinzugeben. Circa 2 Minuten anbraten, dann die gehackten Tomaten und Kichererbsen hinzugeben. Alles gut verrühren, Tomatenmark und Gewürze hinzufügen. Nochmals rühren, anschließend bei kleiner Hitze circa 15 Minuten köcheln lassen. Mit Salz und Pfeffer abschmecken und mit einem Klecks Joghurt servieren.", "2");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("1", "2");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("1", "7");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("1", "1");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "1002", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "1003", "400", "g");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "6300", "400", "g");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "1010", "2", "Blätter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "3001", "100", "ml");

/* ------------------- Rezept 2: Klassischer Kartoffelsalat ------------------- */

INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES ("Klassischer Kartoffelsalat", "Kartoffeln waschen und in kochendem Wasser 20–25 Minuten kochen. Zwiebeln schälen und in Würfel schneiden. Öl in einem Topf erhitzen, Zwiebeln darin ca. 15 Minuten zugedeckt dünsten. Senf und Brühe dazugeben und aufkochen. Essig und Schinken dazugeben, Brühe mit Salz und Pfeffer kräftig würzen. ", "4");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("2", "2");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("2", "4");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("2", "1");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("2", "2");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "1006", "1", "kg");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "1002", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "1009", "1", "Zehen");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "7043", "350", "ml");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "1012", "1", "Bund");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "4001", "4", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "3001", "4", "Stück");

/* ------------------- Rezept 2: Gebackene Süßkartoffeln mit Schafskäse ------------------- */

INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES ("Gebackene Süßkartoffeln", "Süßkartoffeln schälen, waschen und in fingerdicke Stifte schneiden. Knoblauchzehen schälen und in Scheiben schneiden. Auf einem mit Backpapier ausgelegten Backblech verteilen und im vorgeheizten Backofen bei 180 °C (160 °C Umluft; Gas: Stufe 2–3) etwa 20–25 Minuten garen.", "4");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("3", "1");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1011", "1", "kg");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1009", "4", "Zehen");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1008", "1", "Stange");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1012", "1", "Bündel");

COMMIT WORK; -- Commit changes to DB
