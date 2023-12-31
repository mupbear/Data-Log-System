<?php 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

?>

<!DOCTYPE html>
<html>
<head>
	<title>Data</title>

	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://unpkg.com/chart.js-plugin-labels-dv/dist/chartjs-plugin-labels.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chartjs-adapter-date-fns/dist/chartjs-adapter-date-fns.bundle.min.js"></script>
	
	


	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/dark-mode.css" media="(prefers-color-scheme: dark)">

</head>
<body>


<div class="topButtons">
	<input type="checkbox" id="dark-mode-checkbox" style="position: fixed; top: 20px; right: 20px; z-index: 1;"><label for="dark-mode-checkbox" style="position: fixed; top: 20px; right: 40px;">Dark mode:</label>
	<form method="POST" action="home.php"><button> Home </button></form> 
	<form method="POST" action="admin/admin.php"><button> Admin </button></form>
	<form method="POST" action="gps/gps.php"><button> Map </button></form>
</div>

<div class="liveDataTop">
	<label>FuelLevel,OilT,OilP,CLT,"DiffOil"</label><br>
	<label>OilT:</label>
	<label id="dataOILT"></label>
	<br>
	<label>CLT:</label>
	<label id="dataCLT"></label>
</div>	
<br>
<div class="userContainer">
	<label>Select Data</label><br>
	<div class="userSelect">
		<label for="y1">Select Y1:</label>
		<select id="y1" onchange="updateGraph('y1')"></select>
		<div id="y1Legend" class="userLive">
		</div>	
	</div>
	<div class="userSelect">
		<label for="y2">Select Y2:</label>
		<select id="y2" onchange="updateGraph('y2')"></select>
		<div id="y2Legend" class="userLive">
		</div>	
	</div>
	<div class="userSelect">
		<label for="y3">Select Y3:</label>
		<select id="y3" onchange="updateGraph('y3')"></select>
		<div id="y3Legend" class="userLive">
		</div>	
	</div>
	<div class="userSelect">
		<label for="y4">Select Y4:</label>
		<select id="y4" onchange="updateGraph('y4')"></select>
		<div id="y4Legend" class="userLive">
		</div>	
	</div>
</div>
<br>
<div id="chartDiv" class="dataContainer">
	<div class="dataRecent">
		<div id="dataY4" class="dataLive">
		<label>Y4</label>
		</div>
		<div id="dataY3" class="dataLive">
		<label>Y3</label>
		</div>
		<div id="dataY2" class="dataLive">
		<label>Y2</label>
		</div>
		<div id="dataY1" class="dataLive">
		<label>Y1</label>
		</div>
	</div>	
	<div class="dataGraph" id="dataGraph">
		<canvas id="myChart"></canvas>
	</div>
</div>
	
	
	<!-- The script for updating the charts and checking json file. -->
	<script src="app.js"></script>
</body>
</html>


<?php 

}else{

     header("Location: index.php");

     exit();

}

 ?>