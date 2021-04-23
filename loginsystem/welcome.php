<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login.php");
    exit;
}

?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Welcome  <?php $_SESSION['username'] ?></title>
  </head>
  <body>
    <?php require 'partials/_nav.php' ?>
    Welcome - <?php echo $_SESSION['username'];?>

    <h1 class = "text-left"><br>Your Form Details<br></h1>
    <h6 class = text-left>  <?php
 $servername = "localhost";
 $username = "root";
 $password = "";
 $database = "users";
 
 // Create a connection
 $conn = mysqli_connect($servername, $username, $password, $database);
$user=$_SESSION["username"];
// $query= mysqli_query("select *from `users` where 'username'='$username'");
$sql="SELECT * FROM `users` WHERE `username`='$user'";
$result = mysqli_query($conn, $sql);
 $num = mysqli_num_rows($result);
if($num>0)
{
  while($row = mysqli_fetch_assoc($result))
  {
    echo "Name : ".$row['username'] ;
    echo "<br>Email : ".$row['Email'];
    echo "<br>Phone Number : ".$row['phone'];
    echo "<br>Address : ".$row['address'];
    echo "<br>City : ".$row['city'];
    echo "<br>States : ".$row['state'];
    echo "<br>Country : ".$row['country'];
    echo "<br>ZIP Code : ".$row['zip'];
  }
}

?> </h6>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>
