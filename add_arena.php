<?php 
require_once 'dbconnect.php';
    session_start();

$Ranking=isset($_POST['Ranking'])?$_POST['Ranking']:"";
$Main_Player=isset($_POST['Main_Player'])?$_POST['Main_Player']:"";
$Player_Two=isset($_POST['Player_Two'])?$_POST['Player_Two']:"";
$Player_Three=isset($_POST['Player_Three'])?$_POST['Player_Three']:"";
$Map_Name=isset($_POST['Map_Name'])?$_POST['Map_Name']:"";


$SQL = "INSERT INTO Arena ( Ranking, Main_Player, Player_Two,Player_Three, Map_Name) VALUES(";
$SQL.="'".$Ranking."', '".$Main_Player."', '".$Player_Two."','".$Player_Three."', '".$Map_Name."')";
$result = mysqli_query($connection,$SQL);

 $message = "Ad is successfully added to the database!"; // link to where I got the alert message https://stackoverflow.com/questions/13851528/how-to-pop-an-alert-message-box-using-php
    echo "<script type='text/javascript'>alert('$message');
    window.location.href='arena.php';</script>";
?>

