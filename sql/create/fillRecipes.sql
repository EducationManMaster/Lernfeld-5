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
