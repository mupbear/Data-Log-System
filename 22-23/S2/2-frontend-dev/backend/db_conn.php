<?php

$sname= "162.241.244.103";

$unmae= "regtersc_dana";

$password = "Blackybird1";

$db_name = "regtersc_data_test";

$conn = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$conn) {

    echo "Connection failed!";

}