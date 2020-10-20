<?php

//---------------------------------------------------------------------------------------------------------------------------------

$requestname = $_POST["selection"];

$sql = '

SELECT REZEPTE.REZEPTNR, REZEPTE.REZEPT, ALLERGENE.ALLERGENNR, ALLERGENE.ALLERGEN
FROM(( REZEPTE

INNER JOIN REZEPTALERGENE ON REZEPTE.REZEPTNR = REZEPTALERGENE.REZEPTNR)
INNER JOIN ALLERGENE ON REZEPTALERGENE.ALLERGENNR = ALLERGENE.ALLERGENNR)

WHERE ALLERGEN != "'. $requestname .'";

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

  echo "<div id='name'> Darf nicht " . $requestname . " enthalten...</div>";
  echo "<table border='1'>";
  echo "<th>REZEPTNR</th> <th>REZEPT</th> <th>ALLERGENNR</th> <th>ALLERGEN</th>";

  while($row = $result->fetch_assoc()){

    echo "<tr>";
    foreach ($row as $field => $value) { echo "<td>" . $value . "</td>"; }
    echo "</tr>";

  }

}else { echo "<div id='name'>Nicht gefunden! ERROR!</div>"; echo $style; }

$conn->close();

?>
