<?php
include 'variabels.php';
?>
<!DOCTYPE html>
<html lang="en">
<style>
    body {
        background-color: #148484;
        color: rgb(0, 0, 0);
        font-family: Arial, sans-serif;
    }

    button {
        background-color: #005c9c;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    form {

        max-width: 300px;
        margin-top: 50px;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
    }
</style>
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <button onclick="window.location.href='gps.php';">
        Back
    </button>
    <h1>Enter the Latitude & Longitude of the location that you want</h1
</head>
<body>

<form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
    Latitude: <input type="text" name="Latitude"><br><br>
    Longitude: <input type="text" name="Longitude"><br><br>
    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // collect value of input field
        $Latitude = $_POST['Latitude'];
        $Longitude = $_POST['Longitude'];
        if (empty($Latitude)) {
            echo "Latitude or Longitude is empty";
        }elseif (empty( $Longitude)){
            echo "Latitude or Longitude is empty";
        }
        else {
            echo "Latitude =  $Latitude <br>";
            echo "Longitude =  $Longitude <br>" ;


        }
    }
    ?>
    <br>
    <input type="submit" value="Submit" name="enter">
</form><br><br>


<!--<iframe width="600" height="450" src = "https://maps.google.com/maps?q=--><?php //echo $Longitude?><!--,--><?php //echo $Latitude?><!--&hl=es;z=14&amp;output=embed"></iframe>-->

<iframe src="https://www.google.com/maps/embed?pb=!1m21!1m12!1m3!1d38662.04193283993!2d<?php echo $Longitude?>!3d<?php echo $Latitude?>!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m3!3m2!1d51.966905499999996!2d5.9487388!4m0!5e0!3m2!1sen!2snl!4v1682610639134!5m2!1sen!2snl" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

</body>
</html>