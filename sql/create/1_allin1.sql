DROP DATABASE IF EXISTS krautundrueben;
CREATE DATABASE IF NOT EXISTS krautundrueben;
USE krautundrueben;


CREATE TABLE KUNDE (
    KUNDENNR        INTEGER NOT NULL,
    NACHNAME        VARCHAR(50),
    VORNAME         VARCHAR(50),
    GEBURTSDATUM	  DATE,
	 STRASSE         VARCHAR(50),
	 HAUSNR			  VARCHAR(6),
    PLZ             VARCHAR(5),
    ORT             VARCHAR(50),
    TELEFON         VARCHAR(25),
    EMAIL           VARCHAR(50)
    );

CREATE TABLE ZUTAT(
    ZUTATENNR			INTEGER NOT NULL,
    BEZEICHNUNG      VARCHAR(50),
    EINHEIT        	VARCHAR (25),
    NETTOPREIS       DECIMAL(10,2),
    BESTAND          INTEGER,
    LIEFERANT			INTEGER,
	 KALORIEN			INTEGER,
	 KOHLENHYDRATE		DECIMAL (10,2),
	 PROTEIN				DECIMAL(10,2)
);

CREATE TABLE BESTELLUNG (
    BESTELLNR        INTEGER AUTO_INCREMENT NOT NULL,
    KUNDENNR         INTEGER,
    BESTELLDATUM     DATE,
    RECHNUNGSBETRAG  DECIMAL(10,2),
    PRIMARY KEY (BESTELLNR)
);

CREATE TABLE BESTELLUNGZUTAT (
    BESTELLNR       INTEGER NOT NULL,
    ZUTATENNR       INTEGER,
    MENGE     		  INTEGER
);

CREATE TABLE LIEFERANT (
    LIEFERANTENNR   INTEGER NOT NULL,
    LIEFERANTENNAME VARCHAR(50),
    STRASSE         VARCHAR(50),
    HAUSNR			  VARCHAR(6),
    PLZ             VARCHAR(5),
    ORT             VARCHAR(50),
    TELEFON			  VARCHAR(25),
    EMAIL           VARCHAR(50)
);

/******************************************************************************/
/***                              Primary Keys                              ***/
/******************************************************************************/


ALTER TABLE ZUTAT ADD PRIMARY KEY (ZUTATENNR);
ALTER TABLE KUNDE ADD PRIMARY KEY (KUNDENNR);
ALTER TABLE LIEFERANT ADD PRIMARY KEY (LIEFERANTENNR);
ALTER TABLE BESTELLUNGZUTAT ADD PRIMARY KEY (BESTELLNR,ZUTATENNR);


/******************************************************************************/
/***                              Foreign Keys                              ***/
/******************************************************************************/

ALTER TABLE ZUTAT ADD FOREIGN KEY (LIEFERANT) REFERENCES LIEFERANT (LIEFERANTENNR);
ALTER TABLE BESTELLUNGZUTAT ADD FOREIGN KEY (BESTELLNR) REFERENCES BESTELLUNG (BESTELLNR);
ALTER TABLE BESTELLUNG ADD FOREIGN KEY (KUNDENNR) REFERENCES KUNDE (KUNDENNR);
ALTER TABLE BESTELLUNGZUTAT ADD FOREIGN KEY (ZUTATENNR) REFERENCES ZUTAT (ZUTATENNR);
USE krautundrueben;

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2001, 'Wellensteyn','Kira','1990-05-05','Eppendorfer Landstrasse', '104', '20249','Hamburg','040/443322','k.wellensteyn@yahoo.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2002, 'Foede','Dorothea','2000-03-24','Ohmstraße', '23', '22765','Hamburg','040/543822','d.foede@web.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2003, 'Leberer','Sigrid','1989-09-21','Bilser Berg', '6', '20459','Hamburg','0175/1234588','sigrid@leberer.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2004, 'Soerensen','Hanna','1974-04-03','Alter Teichweg', '95', '22049','Hamburg','040/634578','h.soerensen@yahoo.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2005, 'Schnitter','Marten','1964-04-17','Stübels', '10', '22835','Barsbüttel','0176/447587','schni_mart@gmail.com');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2006, 'Maurer','Belinda','1978-09-09','Grotelertwiete', '4a', '21075','Hamburg','040/332189','belinda1978@yahoo.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2007, 'Gessert','Armin','1978-01-29','Küstersweg', '3', '21079','Hamburg','040/67890','armin@gessert.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2008, 'Haessig','Jean-Marc','1982-08-30','Neugrabener Bahnhofstraße', '30', '21149','Hamburg','0178-67013390','jm@haessig.de');

INSERT INTO KUNDE (KUNDENNR, NACHNAME, VORNAME, GEBURTSDATUM, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) VALUES (2009, 'Urocki','Eric','1999-12-04','Elbchaussee', '228', '22605','Hamburg','0152-96701390','urocki@outlook.de');

INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de');

INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de');

INSERT INTO LIEFERANT (LIEFERANTENNR, LIEFERANTENNAME, STRASSE, HAUSNR, PLZ, ORT, TELEFON, EMAIL) values (103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13','19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1001,'Zucchini','Stück', 0.89, 100, 101,19,2,1.6);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1002,'Zwiebel','Stück', 0.15, 50, 101, 28, 4.9, 1.20);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.6, 1);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.3, 1.5);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10, 0.9);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.6, 2);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.1, 2.6);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1008, 'Lauch', 'Stück', 1.2, 35, 101, 29, 3.3, 2.1);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.4, 6.1);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1010, 'Basilikum', 'Bund', 1.3, 10, 101, 41, 5.1, 3.1);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1011, 'Süßkartoffel', 'Stück', 2.0, 200, 101, 86, 20, 1.6);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (1012, 'Schnittlauch', 'Bund', 0.9, 10, 101, 28, 1, 3);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (2001, 'Apfel', 'Stück', 1.2, 750, 102, 54, 14.4, 0.3);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3001, 'Vollmilch. 3.5%', 'Liter', 1.5, 50, 103, 65, 4.7, 3.4);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3002, 'Mozzarella', 'Packung', 3.5, 20, 103, 241, 1, 18.1);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (3003, 'Butter', 'Stück', 3.0, 50, 103, 741, 0.6, 0.7);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (4001, 'Ei', 'Stück', 0.4, 300, 102, 137, 1.5, 11.9);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (5001, 'Wiener Würstchen', 'Paar', 1.8, 40, 101, 331, 1.2, 9.9);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9001, 'Tofu-Würstchen', 'Stück', 1.8, 20, 103, 252, 7, 17);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (6408, 'Couscous', 'Packung', 1.9, 15, 102, 351, 67, 12);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (7043, 'Gemüsebrühe', 'Würfel', 0.2, 4000, 101, 1, 0.5, 0.5);

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (6300, 'Kichererbsen', 'Dose', 1.0, 400, 103, 150, 21.2, 9);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2001,'2020-07-01', 6.21);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2002,'2020-07-08', 32.96);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2003,'2020-08-01',24.08);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2004,'2020-08-02', 19.90);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2005,'2020-08-02', 6.47);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2006,'2020-08-10', 6.96);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2007,'2020-08-10', 2.41);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2008,'2020-08-10', 13.80);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2009,'2020-08-10', 8.67);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2007,'2020-08-15', 17.98);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2005,'2020-08-12', 8.67);

INSERT INTO BESTELLUNG (KUNDENNR, BESTELLDATUM, RECHNUNGSBETRAG) VALUES (2003,'2020-08-13', 20.87);


INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (1, 1001, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (1, 1002, 3);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (1, 1006, 2);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (1, 1004, 3);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (2, 9001, 10);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (2, 1005, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (2, 1003, 4);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (2, 6408, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (3, 6300, 15);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (3, 3001, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (4, 5001, 7);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (4, 3003, 2);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (5, 1002, 4);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (5, 1004, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (5, 1001, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (7, 1009, 9);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (6, 1010, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (8, 1012, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (8, 1008, 7);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (9, 1007, 4);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (9, 1012, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (10, 1011, 7);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (10, 4001, 7);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (11, 5001, 2);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (11, 1012, 5);

INSERT INTO BESTELLUNGZUTAT(BESTELLNR, ZUTATENNR, MENGE) VALUES (12, 1010, 15);



COMMIT WORK;
USE krautundrueben;                                                           -- Select DB: krautundrueben

/* ------------------- Create Primary tables ------------------- */

CREATE TABLE IF NOT EXISTS REZEPTE(                                           -- Create new table (if not already there): REZEPTE

  REZEPTNR      INTEGER NOT NULL AUTO_INCREMENT,                              -- Create new primary attribute column: REZEPTNR, set to auto increment for convenience
  REZEPT        VARCHAR(99),                                                  -- Create new attribute column: REZEPT
  ZUBEREITUNG   TEXT,                                                         -- Create new attribute column: ZUBEREITUNG, set to text for instructions
  PORTIONEN     INTEGER(99),                                                  -- Create new attribute column: PORTIONEN

  PRIMARY KEY (REZEPTNR)                                                      -- Set REZEPTNR as the primary key

);

CREATE TABLE IF NOT EXISTS ERNAHRUNGSKATEGORIEN(                              -- Create new table (if not already there): ERNÄHRUNGSKATEGORIEN

  KATEGORIENR   INTEGER NOT NULL AUTO_INCREMENT,                              -- Create new primary attribute column: KATEGORIENR, set to auto increment for convenience
  KATEGORIE     VARCHAR(99),                                                  -- Create new attribute column: KATEGORIE
  BESCHREIBUNG  TEXT,                                                         -- Create new attribute column: BESCHREIBUNG, set to text for description of category

  PRIMARY KEY (KATEGORIENR)                                                   -- Set KATEGORIENR as the primary key

);

CREATE TABLE IF NOT EXISTS ALLERGENE(                                         -- Create new table (if not already there): ALLERGENE

  ALLERGENNR    INTEGER NOT NULL AUTO_INCREMENT,                              -- Create new primary attribute column: ALLERGENNR, set to auto increment for convenience
  ALLERGEN      VARCHAR(99),                                                  -- Create new attribute column: ALLERGEN

  PRIMARY KEY (ALLERGENNR)                                                    -- Set ALLERGENNR as the primary key

);

/* ------------------- Create linking tables  ------------------- */

CREATE TABLE IF NOT EXISTS REZEPTZUTATEN(                                     -- Create new linking table (if not already there): REZEPTZUTATEN

  REZEPTNR      INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: REZEPTNR
  ZUTATENNR     INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: ZUTATENNR
  MENGE         INTEGER(99),                                                  -- Create new attribute column: MENGE
  EINHEIT       VARCHAR(25),                                                  -- Create new attribute column: EINHEIT

  FOREIGN KEY (REZEPTNR)  REFERENCES REZEPTE (REZEPTNR),                      -- Set REZEPTNR as a foreign key
  FOREIGN KEY (ZUTATENNR) REFERENCES ZUTAT (ZUTATENNR)                        -- Set ZUTATENNR as a foreign key

);

CREATE TABLE IF NOT EXISTS REZEPTKATEGORIEN(                                  -- Create new linking table (if not already there): REZEPTKATEGORIEN

  REZEPTNR      INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: REZEPTNR
  KATEGORIENR   INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: KATEGORIENR

  FOREIGN KEY (REZEPTNR) REFERENCES REZEPTE (REZEPTNR),                       -- Set REZEPTNR as a foreign key
  FOREIGN KEY (KATEGORIENR) REFERENCES ERNAHRUNGSKATEGORIEN (KATEGORIENR)     -- Set KATEGORIENR as a foreign key

);

CREATE TABLE IF NOT EXISTS REZEPTALERGENE(                                    -- Create new linking table (if not already there): REZEPTALERGENE

  REZEPTNR      INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: REZEPTNR
  ALLERGENNR    INTEGER NOT NULL,                                             -- Create a column for a foreign attribute: ALLERGENNR

  FOREIGN KEY (REZEPTNR) REFERENCES REZEPTE (REZEPTNR),                       -- Set REZEPTNR as a foreign key
  FOREIGN KEY (ALLERGENNR) REFERENCES ALLERGENE(ALLERGENNR)                   -- Set ALLERGENNR as a foreign key

);
USE krautundrueben; -- Select DB: krautundrueben

/* ------------------- Allergene ------------------- */
-- insert Allergen i.e. Gluten...

INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Laktose");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Weizen");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Gluten");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Stärke");
INSERT INTO ALLERGENE (ALLERGEN) VALUES ("Karotte");

/* ------------------- ERNAHRUNGSKATEGORIEN ------------------- */
-- insert Kategorien i.e. Veagn...

INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Vegan", "Darf keine tierischen Produkte enthalten.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Vegatarisch", "Darf kein Fleisch enthalten.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Frutarisch", "Vegetarische Ernährungsweise die auf Früchten basiert.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("ohne Gentechnik", "Darf keine Gentechnisch modifizierten Lebensmittel enthalten.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Laktosefrei", "Darf keine Milchprodukte enthalten.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Glutenfrei", "Darf kein Gluten enthalten.");
INSERT INTO ERNAHRUNGSKATEGORIEN (KATEGORIE, BESCHREIBUNG) VALUES ("Low Carb", "Kohlenhydrate minimierte ernährungsweise.");

/* ------------------- Neue Zutaten ------------------- */
-- insert additional Zutaten that are required for certan Rezepte

INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9002, "Lasagneplatten", "Stück", 0.21, 500, 101, 23, 12, 2);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9003, "Spinat", "kilogramm", 0.45, 5, 102, 12, 5, 10);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9004, "Lachs", "kilogramm", 1.42, 2, 101, 45, 15, 20);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9005, "Käse", "kilogramm", 0.7, 1.5, 101, 250, 1, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9006, "Mehl", "kilogramm", 0.23, 6, 101, 23, 3, 1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9007, "Sahne", "Liter", 0.45, 1, 101, 120, 4, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9008, "Parmesan", "gramm", 55, 0.5, 101, 121, 2.5, 3.1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9009, "Zitrone", "Stück", 0.23, 200, 101, 24, 1.2, 0.7);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9010, "Pfeffer", "gramm", 0.21, 470, 101, 12, 0.3, 0.3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9011, "Muskat", "gramm", 0.45, 400, 101, 17, 0.7, 0.4);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9012, "Hähnchenbrustfilet", "gramm", 0.76, 500, 101, 26, 12, 43);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9013, "Reis", "kilogramm", 0.12, 15, 101, 56, 14, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9014, "Sojasauce", "Liter", 0.42, 1, 101, 34, 1, 2);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9015, "Zucker", "kilogramm", 0.41, 3, 101, 142, 0.1, 0.2);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9016, "Bambussprossen", "Stück", 0.21, 200, 101, 45, 3, 5);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9017, "Kokosmilch", "Liter", 0.24, 1, 101, 34, 12, 15);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9018, "Currypaste", "gramm", 0.65, 500, 101, 23, 4, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9019, "Petersilie", "Bund", 0.32, 15, 101, 12, 1, 1);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9020, "Majoran", "gramm", 0.22, 500, 101, 5, 0.41, 0.2);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9021, "Milchreis", "kilogramm", 1.3, 4, 101, 67, 2, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9022, "Vanillezucker", "gramm", 0.76, 400, 101, 87, 0.4, 0.3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9023, "Apfelmus", "gramm", 0.96, 450, 101, 45, 2.4, 1.3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9024, "Oregano", "gramm", 0.32, 130, 101, 23, 2.6, 3.3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9025, "Pflanzenöl", "Liter", 0.42, 5, 101, 76, 6.6, 3);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9026, "Salz", "kilogramm", 0.1, 5, 101, 3, 0, 0);
INSERT INTO ZUTAT (ZUTATENNR, BEZEICHNUNG, EINHEIT, NETTOPREIS, BESTAND, lieferant, KALORIEN, KOHLENHYDRATE, PROTEIN) VALUES (9027, "Paprikaschote", "Stück", 0.34, 200, 101, 45, 2, 0.7);
USE krautundrueben; -- Select DB: krautundrueben

/* -------------------------------------------------------- Rezept 1: Lachslasagne -------------------------------------------------------- */
-- Create new Rezept in REZEPTE table
INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES (

  -- set Rezept name
  "Lachslasagne",

  -- add Zubereitung
  "Den Spinat 5 min vorgaren, auspressen bis er ganz trocken ist und würzen. Den Lachs etwas auftauen lassen, in kleine Stücke schneiden und mit Zitrone, Salz und Pfeffer würzen. Für die Bechamel-Soße wird die Butter im Topf erhitzt, das Mehl verrührt und mit der Milch aufgegossen. Die Brühe dazugeben und 5 min. kochen lassen. Danach die Sahne dazurühren und nochmals aufkochen lassen. Schließlich den Parmesan hinzufügen und mit Pfeffer und Muskat abschmecken. Jetzt alles abwechselnd in eine feuerfeste Form schichten, zuerst die Soße, dann Lasagneblätter, Soße, Spinat, Lachs, Käse, Lasagneblätter, usw. Letzte Schicht ist Soße. Die Lasagne anschließend bei 200 Grad 45 min. in den Backofen.",

  -- how many Portionen
  "4"

);

-- set ALERGENE for REZEPT
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("1", "1");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("1", "2");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("1", "3");

-- set KATEGORIE for REZEPT
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("1", "4");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("1", "7");

-- set ZUTATEN for REZEPT
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9002", "300", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9003", "800", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9004", "500", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9005", "150", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "3003", "50",  "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9006", "2", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "3001", "250",  "milliliter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "7043", "125",  "milliliter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9007", "200",  "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9008", "75",  "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9009", "1",  "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9010", "1",  "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("1", "9011", "1",  "Prise");





/* -------------------------------------------------------- Rezept 2: Thaicurry mit Hähnchen -------------------------------------------------------- */
-- Create new Rezept in REZEPTE table
INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES (

  -- set Rezept name
  "Thaicurry mit Hähnchen",

  -- add Zubereitung
  "Die Hühnerbrust in Streifen schneiden und in einer Marinade aus Sojasauce, Pfeffer und Zucker ca. 1 Stunde marinieren. Im Wok oder in der Pfanne gut anbraten. Herausnehmen. Gemischtes Gemüse und Bambussprossen waschen und sehr fein schneiden, ebenfalls anbraten, dann herausnehmen. Die Currypaste und die Kokosmilch im Wok verrühren und kurz (!) durchköcheln lassen. Dann Fleisch und Gemüse wieder zugeben und noch kurz köcheln lassen. Mit Sojasauce abschmecken. In der Zwischenzeit den Reis kochen und abtropfen lassen.",

  -- how many Portionen
  "4"

);

-- set ALERGENE for REZEPT
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("2", "3");

-- set KATEGORIE for REZEPT
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("2", "5");

-- set ZUTATEN for REZEPT
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9012", "500", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9013", "250", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9014", "2", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9015", "1", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "1009", "1", "Zehe");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9016", "1", "Glas");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9017", "125", "milliliter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9018", "1", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("2", "9010", "1", "Prise");





/* -------------------------------------------------------- Rezept 3: Kartoffelsuppe -------------------------------------------------------- */
-- Create new Rezept in REZEPTE table
INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES (

  -- set Rezept name
  "Kartoffelsuppe",

  -- add Zubereitung
  "Kartoffeln und Karotte schälen und in grobe Würfel schneiden. Zwiebel würfeln. Lauch in Ringe schneiden. Zwiebeln in etwas Olivenöl glasig dünsten, Lauch dazugeben. Mit der Gemüsebrühe ablöschen. Die gewürfelten Kartoffeln und Karotte in die Brühe geben. Alles für ca. 20 min köcheln lassen. Anschließend alles mit dem Pürierstab zu einer Suppe pürieren, mit Pfeffer und Muskat abschmecken. Die in Scheiben geschnittenen Würstchen in den Suppenteller geben und die heiße Kartoffelsuppe darüber gießen.",

  -- how many Portionen
  "4"

);

-- set ALERGENE for REZEPT
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("3", "4");
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("3", "5");

-- set KATEGORIE for REZEPT
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("3", "1");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("3", "2");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("3", "5");

-- set ZUTATEN for REZEPT
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1006", "5", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1005", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1008", "1", "Stange");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1002", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "7043", "1000", "milliliter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "9001", "2", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "9019", "1", "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "9010", "1", "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "1012", "1", "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "9020", "1", "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("3", "9011", "1", "Prise");





/* -------------------------------------------------------- Rezept 4: Milchreis mit Apfelmus -------------------------------------------------------- */
-- Create new Rezept in REZEPTE table
INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES (

  -- set Rezept name
  "Milchreis mit Apfelmus",

  -- add Zubereitung
  "In einem großen Topf die Butter schmelzen, anschließend den Rundkornreis kurz in der Butter anschwitzen. Nun die zimmerwarme Vollmilch sowie 4 EL Zucker hinzugeben. Vanillezucker hinzugeben. Alles unter vorsichtigem Rühren mit dem Holzkochlöffel einmal aufkochen lassen und dabei aufpassen, dass sich nichts am Topfboden ansetzt. Nun den Topf auf eine Herdplatte stellen, die auf kleinster Stufe heizt. Den Milchreis im geschlossenen Topf exakt 30 Minuten ziehen lassen. Nach der Hälfte der Zeit einmal umrühren. Nach 30 Minuten ist der Milchreis servierfertig, er kann warm oder kalt gegessen werden. Nach Geschmack Apfelmus dazu reichen.",

  -- how many Portionen
  "4"

);

-- set ALERGENE for REZEPT
INSERT INTO REZEPTALERGENE (REZEPTNR, ALLERGENNR) VALUES ("4", "1");

-- set KATEGORIE for REZEPT
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("4", "4");

-- set ZUTATEN for REZEPT
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "3001", "1", "Liter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "9021", "250", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "9015", "4", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "3003", "1", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "9022", "1", "Päckchen");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("4", "9023", "1", "Glas");





/* -------------------------------------------------------- Rezept 5: Sommerlicher Couscous-Salat -------------------------------------------------------- */
-- Create new Rezept in REZEPTE table
INSERT INTO REZEPTE (REZEPT, ZUBEREITUNG, PORTIONEN) VALUES (

  -- set Rezept name
  "Sommerlicher Couscous-Salat",

  -- add Zubereitung
  "Couscous in eine Schale geben und mit kochender Gemüsebrühe übergießen. Kurz umrühren, quellen lassen und evtl. Wasser nachgeben. Inzwischen das Gemüse waschen und anschließend würfeln. Die Kräuter waschen und kleinhacken. Diese Zutaten mit dem Couscous vermischen. Nun Öl hinzugeben und zum Schluss mit Salz und Pfeffer abschmecken.",

  -- how many Portionen
  "4"

);

-- set KATEGORIE for REZEPT
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("5", "1");
INSERT INTO REZEPTKATEGORIEN (REZEPTNR, KATEGORIENR) VALUES ("5", "2");

-- set ZUTATEN for REZEPT
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "6408", "200", "gramm");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "7043", "300", "milliliter");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "1003", "3", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "1001", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "9027", "1", "Stück");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "9024", "3", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "9025", "2", "Esslöffel");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "9026", "1", "Prise");
INSERT INTO REZEPTZUTATEN (REZEPTNR, ZUTATENNR, MENGE, EINHEIT) VALUES ("5", "9010", "1", "Prise");

-- Kreate admin user with all PRIVILEGES
GRANT ALL PRIVILEGES ON *.* TO `admin`@`localhost` IDENTIFIED BY PASSWORD "*828A8001FF3055DC2A92726FAEC5C7D91859D192" WITH GRANT OPTION;

-- create user with only access to REZEPTE
USE krautundrueben;
GRANT SELECT ON REZEPTE TO `user`@`localhost` IDENTIFIED BY PASSWORD '*52C2C8FB39E68BCAD89E4C7073320D30AF62196D';
