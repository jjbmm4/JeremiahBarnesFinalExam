<?php 
    require_once 'dbconnect.php';

?>

<!--Jeremiah Barnes wrote this one-->
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<ul>
<li><a href="home.php">Home</a></li>
<li><a href="createarena.php">Add Arena</a></li>
</ul>

<?php

$sql = "SELECT Match_ID, Main_Player, Ranking, Player_Two, Player_Three,  Map_Name FROM Arena";
$result = mysqli_query($connection, $sql);

echo "<table>
<tr>
<th>Match Number</th>
<th>Ranking</th>
<th>You</th>
<th>Teammate 1</th>
<th>Teammate 2</th>
<th>Map Played On</th>
</tr>";

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
     echo"<tr>";
     echo"<td>" . $row["Match_ID"]. "</td>";
     echo"<td>" . $row["Ranking"]. "</td>";
     echo"<td>" . $row["Main_Player"]. "</td>";
     echo"<td>" . $row["Player_Two"]. "</td>";
	 echo"<td>" . $row["Player_Three"]. "</td>";
     echo"<td>" . $row["Map_Name"]. "</td>";
     echo"</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

?>

</body>
</html>