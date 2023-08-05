<?php
include 'variabels.php';
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="app.css">
    <button onclick="window.location.href='gps.php';">
        Back
    </button>
    <h1>This is the current location of the car</h1
</head>
    <style>
        #map {
            height: 100%;
        }
        html, body {
            height: 80%;
            padding: 0;
        }
    </style>

    <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCtw9aepJkDjZ1fhlQD989qN0J4_CL5eM&callback=initMap"
            async
    ></script>
    <script>
        function initMap() {
            navigator.geolocation.getCurrentPosition(
                function (position) {
                    var map = new google.maps.Map(document.getElementById("map"), {
                        center: { lat: position.coords.latitude, lng: position.coords.longitude },
                        zoom: 14,
                    });
                    var marker = new google.maps.Marker({
                        position: { lat: position.coords.latitude, lng: position.coords.longitude },
                        map: map,
                        title: "My Location",
                    });
                },
                function () {
                    alert("Unable to get your location");
                }
            );
        }
    </script>
</head>
<body>
<div id="map"></div>
</body>
</html>

