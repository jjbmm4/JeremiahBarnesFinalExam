<?php
  $db_hostname = '127.0.0.1';
  $db_database = "apex_stats";
  $db_username = "root";
  $db_password = "JimS45H@";
  
  $connection = mysqli_connect($db_hostname, $db_username,$db_password,$db_database);

  if (!$connection)
    die("Unable to connect to MySQL: " . mysqli_connect_errno());
?>