<?php 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

?>

<!DOCTYPE html>

<html>

<head>
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="app.css">
</head>
<body>


    <form name="validateForm" method="post" onsubmit="return pageSelect()">
        <p>Please input the administrator password:</p>
        <input type="password" name="adminPass" placeholder="Password"><br>
        <input type="radio" name="choice" id="choice1"   value="S">
        <label for="type1">Start Event</label><br>
        <input type="radio" name="choice" id="choice2"   value="F">
        <label for="type2">Finish Event</label><br>

        <p><input type="submit" value="Submit"></p>

    </form>

   <script>
    function pageSelect(){
        var password = document.forms.validateForm.adminPass.value;
        var choice = document.forms.validateForm.choice.value;
        if(password == "" )
        {
            window.alert("Please enter the admin password.");
            return false;
        } else if( password === "blabla")
        {
            if(choice === "S"){
                validateForm.action = "startEvent.php";
                return true;
            } else if(choice === "F"){
                validateForm.action = "finishEvent.php";
                return true;
            } else{
                window.alert("Please choose an option.");
                return false;
            }
        }else {
            window.alert("Incorrect password, please try again");
            return false;
        }
    }
   </script>
</body>

</html>


<?php
 }else{

     header("Location: ../index.php");

     exit();

}

 ?>