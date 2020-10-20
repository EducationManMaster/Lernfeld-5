<?php

//---------------------------------------------------------------------------------------------------------------------------------

$requestname = $_POST["selection"];

$sql = '

SELECT REZEPTE.REZEPTNR, REZEPTE.REZEPT, COUNT(REZEPTZUTATEN.ZUTATENNR) AS "Zutatenanzahl", REZEPTKATEGORIEN.KATEGORIENR, ERNAHRUNGSKATEGORIEN.KATEGORIE
FROM REZEPTE
JOIN REZEPTZUTATEN ON REZEPTE.REZEPTNR = REZEPTZUTATEN.REZEPTNR
JOIN REZEPTKATEGORIEN ON REZEPTE.REZEPTNR = REZEPTKATEGORIEN.REZEPTNR
NATURAL JOIN ERNAHRUNGSKATEGORIEN

WHERE REZEPTKATEGORIEN.KATEGORIENR = '.$requestname.'

GROUP BY REZEPTZUTATEN.REZEPTNR

HAVING COUNT(REZEPTZUTATEN.ZUTATENNR) < 5 ;


';

//---------------------------------------------------------------------------------------------------------------------------------

$style = "

<style>

@font-face { font-family: Roboto; src: url('../img/roboto.ttf'); }

body{

  margin: 0;
  padding: 50px;

  font-size: 15;
  font-family: 'Roboto', sans-serif;
  color: rgba(0,0,0,0.75);

}

table{

  border-collapse: collapse;
  border: solid 1px rgba(0,0,0,0.35);
  width: 100%;
  background-color: #FFFFFF;

}

 th, td{

   padding: 10px;

 }

 th{background-color: #DCEDC8;}

 #name{

   font-size: 20px;
   margin-bottom: 25px;

 }

</style>

";

//---------------------------------------------------------------------------------------------------------------------------------

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "krautundrueben";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error);}

$result = $conn->query($sql);

if ($result->num_rows > 0){

  echo $style;

  echo "<div id='name'>Kategorie: " . $requestname . "</div>";
  echo "<table border='1'>";
  echo "<th>REZEPTNR</th> <th>REZEPT</th> <th>Zutatenanzahl</th> <th>KATEGORIENR</th> <th>KATEGORIE</th>";

  while($row = $result->fetch_assoc()){

    echo "<tr>";
    foreach ($row as $field => $value) { echo "<td>" . $value . "</td>"; }
    echo "</tr>";

  }

}else { echo "<div id='name'>Es gibt keine Rezepte mit weniger als 5 Zutaten!</div>"; echo $style; }

$conn->close();

?>
