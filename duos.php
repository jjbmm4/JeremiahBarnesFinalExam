<?php 
    require_once 'dbconnect.php';

?>

<!--Jeremiah Barnes wrote this one-->
<!DOCTYPE html>
<html>
<title>View Ads</title>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<ul>
<li><a href="home.php">Home</a></li>
<li><a href="createduos.php">Add Duos</a></li>
</ul>

<?php

$sql = "SELECT Match_ID, Main_Player, Ranking, Player_Two, Main_Player_Primary_Gun, Main_Player_Secondary_Gun, Map_Name, Location_Name FROM Duos";
$result = mysqli_query($connection, $sql);

echo "<table>
<tr>
<th>Match Number</th>
<th>Rank</th>
<th>You</th>
<th>Teammate</th>
<th>Gun 1</th>
<th>Gun 2</th>
<th>Map Played On</th>
<th>Drop Location</th>
</tr>";

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
     echo"<tr>";
     echo"<td>" . $row["Match_ID"]. "</td>";
     echo"<td>" . $row["Ranking"]. "</td>";
     echo"<td>" . $row["Main_Player"]. "</td>";
     echo"<td>" . $row["Player_Two"]. "</td>";
     echo"<td>" . $row["Main_Player_Primary_Gun"]. "</td>";
	 echo"<td>" . $row["Main_Player_Secondary_Gun"]. "</td>";
     echo"<td>" . $row["Map_Name"]. "</td>";
     echo"<td>" . $row["Location_Name"]. "</td>";
     echo"</tr>";
  }
  echo "</table>";
} else {
  echo "0 results";
}

?>

</body>
</html>