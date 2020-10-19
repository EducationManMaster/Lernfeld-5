<?php


$sql = "SELECT REZEPTKATEGORIEN.REZEPTNR, REZEPTE.REZEPT, REZEPTKATEGORIEN.KATEGORIENR, ERNAHRUNGSKATEGORIEN.KATEGORIE
FROM(( REZEPTE

LEFT  JOIN REZEPTKATEGORIEN     ON REZEPTE.REZEPTNR             = REZEPTKATEGORIEN.REZEPTNR        )
RIGHT JOIN ERNAHRUNGSKATEGORIEN ON REZEPTKATEGORIEN.KATEGORIENR = ERNAHRUNGSKATEGORIEN.KATEGORIENR )

WHERE KATEGORIE = 'Vegan';
";











$servername = "localhost";
$username = "root";
$password = "";
$dbname = "krautundrueben";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) { die("Connection failed: " . $conn->connect_error);}

$result = $conn->query($sql);

if ($result->num_rows > 0){

  echo "<table border='1'>";

  while($row = $result->fetch_assoc()){

    echo "<tr>";
    foreach ($row as $field => $value) { echo "<td>" . $value . "</td>"; }
    echo "</tr>";

  }

}else { echo "Request ERROR!"; }

$conn->close();

?>
