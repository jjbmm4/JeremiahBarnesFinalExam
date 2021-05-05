<?php 
require_once 'dbconnect.php';
    session_start();

$Ranking=isset($_POST['Ranking'])?$_POST['Ranking']:"";
$RP_Earned=isset($_POST['RP_Earned'])?$_POST['RP_Earned']:"";
$Main_Player=isset($_POST['Main_Player'])?$_POST['Main_Player']:"";
$Player_Two=isset($_POST['Player_Two'])?$_POST['Player_Two']:"";
$Player_Three=isset($_POST['Player_Three'])?$_POST['Player_Three']:"";
$Main_Player_Primary_Gun=isset($_POST['Main_Player_Primary_Gun'])?$_POST['Main_Player_Primary_Gun']:"";
$Main_Player_Secondary_Gun=isset($_POST['Main_Player_Secondary_Gun'])?$_POST['Main_Player_Secondary_Gun']:"";
$Map_Name=isset($_POST['Map_Name'])?$_POST['Map_Name']:"";
$Location_Name=isset($_POST['Location_Name'])?$_POST['Location_Name']:"";


$SQL = "INSERT INTO Ranked ( Ranking, RP_Earned, Main_Player, Player_Two,Player_Three, Main_Player_Primary_Gun, Main_Player_Secondary_Gun, Map_Name, Location_Name) VALUES(";
$SQL.="'".$Ranking."',' ".$RP_Earned."', '".$Main_Player."', '".$Player_Two."','".$Player_Three."', '".$Main_Player_Primary_Gun."', '".$Main_Player_Secondary_Gun."', '".$Map_Name."',  '".$Location_Name."')";
$result = mysqli_query($connection,$SQL);

 $message = "Ad is successfully added to the database!"; // link to where I got the alert message https://stackoverflow.com/questions/13851528/how-to-pop-an-alert-message-box-using-php
    echo "<script type='text/javascript'>alert('$message');
    window.location.href='ranked.php';</script>";
?>

