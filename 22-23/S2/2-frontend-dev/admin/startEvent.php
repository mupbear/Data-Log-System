<?php 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

?>
<head>
<link rel="stylesheet" type="text/css" href="app.css">
</head>
<form method="POST" action="../backend/logout.php">   
     <button> Logout </button>
    </form>
<form id="myForm">
    <p>Please fill in the following boxes:</p>
    <input type="text" name="name" placeholder="Name of Event"><br>
    <input type="text" name="moduleID" placeholder="ID of car or module"><br>

    <p>Type</p>
    <input type="radio" name="type" id="type1" value="R">
    <label for="type1">Race</label>
    <input type="radio" name="type" id="type2" value="T">
    <label for="type2">Test</label>

    <p>Where</p>
    <input type="radio" name="where" id="where1" value="Zandvoort">
    <label for="where1">Zandvoort</label>
    <input type="radio" name="where" id="where2" value="Assen">
    <label for="where2">Assen</label>
    <input type="radio" name="where" id="where3" value="Arnhem">
    <label for="where3">Arnhem(Testing)</label>

    <p>Start Time</p>
    <input type="datetime-local" id="start1" name="time">

    <p><input type="submit" value="Submit"></p>
</form>

<script>
    const form = document.querySelector('#myForm');
    form.addEventListener('submit', function(e) {
        e.preventDefault(); // prevent the form from submitting
        const name = form.elements.name.value;
        const type = form.elements.type.value;
        const where = form.elements.where.value;
        const time = form.elements.time.value;

        // send data to MySQL database using fetch or XMLHttpRequest
        // ...
    });
</script>



<?php
 }else{

     header("Location: index.php");

     exit();

}

 ?>