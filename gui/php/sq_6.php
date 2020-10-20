<?php

//---------------------------------------------------------------------------------------------------------------------------------

$requestname = $_POST["selection"];

$sql = '

SELECT KUNDE.KUNDENNR,
       KUNDE.NACHNAME,
       ROUND(AVG(ZUTAT.KALORIEN),1) AS "Ø Kalorien",
       ROUND(AVG(ZUTAT.KOHLENHYDRATE),1) AS "Ø Kohlenhydrate",
       ROUND(AVG(ZUTAT.PROTEIN),1) AS "Ø Protein"

FROM BESTELLUNG
NATURAL JOIN BESTELLUNGZUTAT
NATURAL JOIN ZUTAT
NATURAL JOIN KUNDE

WHERE KUNDENNR = '. $requestname .';

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

  echo "<div id='name'>Nährwerte von Kunde " . $requestname . "</div>";
  echo "<table border='1'>";
  echo "<th>KUNDENNR</th> <th>NACHNAME</th> <th>Ø Kalorien</th> <th>Ø Kohlenhydrate</th> <th>Ø Protein</th>";

  while($row = $result->fetch_assoc()){

    echo "<tr>";
    foreach ($row as $field => $value) { echo "<td>" . $value . "</td>"; }
    echo "</tr>";

  }

}else { echo "<div id='name'>Nicht gefunden! ERROR!</div>"; echo $style; }

$conn->close();

?>
