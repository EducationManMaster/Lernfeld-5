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
