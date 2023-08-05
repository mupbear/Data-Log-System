<?php
include 'variabels.php';
?>
<!DOCTYPE html>

<html>
<head>
    <title>GPS</title>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>



<!--    <link rel="stylesheet" type="text/css" href="./style.css" />-->
    <link rel="stylesheet" type="text/css" href="../css/app.css">



</head>

<body>

<script>
    function loadFrame (elm){
        let frame1 = document.getElementById('frame1');
        frame1.src = elm.dataset.src;
    }

</script>
<button onclick="window.location.href='../data.php';">
        Back
    </button>

<button onclick="window.location.href='liveLocation.php';">
    Live Location
</button>
<button id="b2" data-src=<?php echo $Zandvoort ?> width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" onclick="loadFrame(this)">Zandvoort</button>
<button id="b3" data-src=<?php echo $Assen ?> width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" onclick="loadFrame(this)">Assen</button>

<button onclick="window.location.href='enterLocation.php';">
    Enter location
</button>


<br>
<center>
<iframe id="frame1" scrolling="no"width="1000" height="550" style="margin-top:100px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</br>
    <div id="map"></div>
</center>
</body>

</html>