<?php 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

?>
hello
<?php
 }else{

     header("Location: index.php");

     exit();

}

 ?>