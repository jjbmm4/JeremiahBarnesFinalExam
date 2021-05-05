<?php 
require_once 'dbconnect.php';

?>

<html>    
<head>
 
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
                <ul>
                    <li><a href="home.php">Home</a></li>
    <div style="padding-left:16px">
        <h2>Add Trios</h2>
        <form method="post" action="add_trios.php">
        <table>
                <tr><td>Ranking: </td><td><input type="int" name="Ranking"></td></tr>
                <tr><td>You: </td><td><select name="Main_Player">
                <?php
                $sql = "SELECT Legend_Name FROM legendinfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Legend_Name" ] . ">" . $row["Legend_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				
                <tr><td>Teamate 1: </td><td><select name="Player_Two">
                <?php
                $sql = "SELECT Legend_Name FROM legendinfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Legend_Name" ] . ">" . $row["Legend_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				<tr><td>Teamate 2: </td><td><select name="Player_Three">
                <?php
                $sql = "SELECT Legend_Name FROM legendinfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Legend_Name" ] . ">" . $row["Legend_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				
                <tr><td>Primary Gun: </td><td><select name="Main_Player_Primary_Gun">
                <?php
                $sql = "SELECT Gun_Name FROM GunInfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Gun_Name" ] . ">" . $row["Gun_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				<tr><td>Secondary Gun: </td><td><select name="Main_Player_Secondary_Gun">
                <?php
                $sql = "SELECT Gun_Name FROM GunInfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Gun_Name" ] . ">" . $row["Gun_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				<tr><td>Map Name</td><td><select name="Map_Name">
                <?php
                $sql = "SELECT Map_Name FROM MapInfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Map_Name" ] . ">" . $row["Map_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				<tr><td>Map Location</td><td><select name="Location_Name">
                <?php
                $sql = "SELECT Location_Name FROM LocationInfo";
                $result = mysqli_query($connection, $sql);
                
                if ($result->num_rows > 0) {
                // output data of each row
                while($row = $result->fetch_assoc()) {
                echo "<option value= " . $row["Location_Name" ] . ">" . $row["Location_Name" ] . "</option>";
  }
                } else {
                echo "0 results";
                }
                ?> </select> </td></tr>
				
				
                <!-- <tr><td>Username: </td><td><input type="varchar" name="UserID"></td></tr> -->
                <tr><td><input type="submit" value="Submit"></td><td></td>
            </table>
        </form>
    
    </div>

</body>

</html>