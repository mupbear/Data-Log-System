var dark = false;

var graphData = [  
  {    "value": "Empty",    "label": "None Selected"},
  {
   "value": "percentage",
   "label": "Percentage (%)",
   "data": 	{
     "datasets": 	[
             {
         "value": "TPS",
         "label": "TPS",
         "data": 		[
          {"x": "2022-05-03T00:00:00Z", "y": 50},
          {"x": "2022-05-03T00:01:00Z", "y": 55},
          {"x": "2022-05-03T00:02:00Z", "y": 65},
          {"x": "2022-05-03T00:03:00Z", "y": 70},
          {"x": "2022-05-03T00:04:00Z", "y": 60},
          {"x": "2022-05-03T00:05:00Z", "y": 45},
          {"x": "2022-05-03T00:06:00Z", "y": 50},
          {"x": "2022-05-03T00:07:00Z", "y": 55},
          {"x": "2022-05-03T00:08:00Z", "y": 65},
          {"x": "2022-05-03T00:09:00Z", "y": 70},
          {"x": "2022-05-03T00:10:00Z", "y": 60}
 
       ]
                 }
             ]
         }
 },
   {
     "value": "temperature",
     "label": "Temperature (C)",
     "data": 	{
       "datasets": 	[
               {
           "value": "OILT",
           "label": "OILT",
           "data": 		[
             {"x": "2022-01-01T23:00:00Z", "y": 60},
             {"x": "2022-01-01T23:01:00Z", "y": 55},
             {"x": "2022-01-01T23:02:00Z", "y": 65},
             {"x": "2022-01-01T23:03:00Z", "y": 70},
             {"x": "2022-01-01T23:04:00Z", "y": 80},
             {"x": "2022-01-01T23:05:00Z", "y": 90},
             {"x": "2022-01-01T23:06:00Z", "y": 70},
             {"x": "2022-01-01T23:07:00Z", "y": 60},
             {"x": "2022-01-01T23:08:00Z", "y": 50},
             {"x": "2022-01-01T23:09:00Z", "y": 40},
             {"x": "2022-01-01T23:11:00Z", "y": 55},
             {"x": "2022-01-01T23:12:00Z", "y": 45},
             {"x": "2022-01-01T23:13:00Z", "y": 60},
             {"x": "2022-01-01T23:14:00Z", "y": 75},
             {"x": "2022-01-01T23:15:00Z", "y": 80},
             {"x": "2022-01-01T23:16:00Z", "y": 70},
             {"x": "2022-01-01T23:17:00Z", "y": 65},
             {"x": "2022-01-01T23:18:00Z", "y": 55},
             {"x": "2022-01-01T23:19:00Z", "y": 50},
             {"x": "2022-01-01T23:20:00Z", "y": 45},
             {"x": "2022-01-01T23:21:00Z", "y": 60},
             {"x": "2022-01-01T23:22:00Z", "y": 55},
             {"x": "2022-01-01T23:23:00Z", "y": 65},
             {"x": "2022-01-01T23:24:00Z", "y": 70},
             {"x": "2022-01-01T23:25:00Z", "y": 80},
             {"x": "2022-01-01T23:26:00Z", "y": 90},
             {"x": "2022-01-01T23:27:00Z", "y": 70},
             {"x": "2022-01-01T23:28:00Z", "y": 60},
             {"x": "2022-01-01T23:29:00Z", "y": 50},
             {"x": "2022-01-01T23:30:00Z", "y": 40},
             {"x": "2022-01-01T23:31:00Z", "y": 55},
             {"x": "2022-01-01T23:32:00Z", "y": 45},
             {"x": "2022-01-01T23:33:00Z", "y": 60},
             {"x": "2022-01-01T23:34:00Z", "y": 75},
             {"x": "2022-01-01T23:35:00Z", "y": 80},
             {"x": "2022-01-01T23:36:00Z", "y": 70},
             {"x": "2022-01-01T23:37:00Z", "y": 65},
             {"x": "2022-01-01T23:38:00Z", "y": 55},
             {"x": "2022-01-01T23:39:00Z", "y": 50},
             {"x": "2022-01-01T23:40:00Z", "y": 45}
         ]
                   },
         {
           "value": "CLT",
           "label": "CLT",
           "data": 		[
             {"x": "2022-01-01T23:00:00Z", "y": 50},
             {"x": "2022-01-01T23:01:00Z", "y": 55},
             {"x": "2022-01-01T23:02:00Z", "y": 55},
             {"x": "2022-01-01T23:03:00Z", "y": 60},
             {"x": "2022-01-01T23:04:00Z", "y": 70},
             {"x": "2022-01-01T23:05:00Z", "y": 80},
             {"x": "2022-01-01T23:06:00Z", "y": 60},
             {"x": "2022-01-01T23:07:00Z", "y": 55},
             {"x": "2022-01-01T23:09:00Z", "y": 45},
             {"x": "2022-01-01T23:10:00Z", "y": 40},
             {"x": "2022-01-01T23:11:00Z", "y": 45},
             {"x": "2022-01-01T23:12:00Z", "y": 60},
             {"x": "2022-01-01T23:13:00Z", "y": 65},
             {"x": "2022-01-01T23:14:00Z", "y": 80},
             {"x": "2022-01-01T23:15:00Z", "y": 85},
             {"x": "2022-01-01T23:16:00Z", "y": 80},
             {"x": "2022-01-01T23:17:00Z", "y": 65},
             {"x": "2022-01-01T23:18:00Z", "y": 55},
             {"x": "2022-01-01T23:19:00Z", "y": 40},
             {"x": "2022-01-01T23:20:00Z", "y": 35},
             {"x": "2022-01-01T23:21:00Z", "y": 40},
             {"x": "2022-01-01T23:22:00Z", "y": 55},
             {"x": "2022-01-01T23:23:00Z", "y": 65},
             {"x": "2022-01-01T23:24:00Z", "y": 70},
             {"x": "2022-01-01T23:25:00Z", "y": 75},
             {"x": "2022-01-01T23:26:00Z", "y": 80},
             {"x": "2022-01-01T23:27:00Z", "y": 75},
             {"x": "2022-01-01T23:28:00Z", "y": 65},
             {"x": "2022-01-01T23:29:00Z", "y": 55},
             {"x": "2022-01-01T23:30:00Z", "y": 45},
             {"x": "2022-01-01T23:31:00Z", "y": 50},
             {"x": "2022-01-01T23:32:00Z", "y": 40},
             {"x": "2022-01-01T23:33:00Z", "y": 65},
             {"x": "2022-01-01T23:34:00Z", "y": 75},
             {"x": "2022-01-01T23:35:00Z", "y": 85},
             {"x": "2022-01-01T23:36:00Z", "y": 75},
             {"x": "2022-01-01T23:37:00Z", "y": 60},
             {"x": "2022-01-01T23:38:00Z", "y": 50},
             {"x": "2022-01-01T23:39:00Z", "y": 55},
             {"x": "2022-01-01T23:40:00Z", "y": 40},
             {"x": "2022-01-01T23:41:00Z", "y": 65},
             {"x": "2022-01-01T23:42:00Z", "y": 50},
             {"x": "2022-01-01T23:43:00Z", "y": 60},
             {"x": "2022-01-01T23:44:00Z", "y": 75},
             {"x": "2022-01-01T23:45:00Z", "y": 85},
             {"x": "2022-01-01T23:46:00Z", "y": 95},
             {"x": "2022-01-01T23:47:00Z", "y": 75},
             {"x": "2022-01-01T23:48:00Z", "y": 65},
             {"x": "2022-01-01T23:49:00Z", "y": 55},
             {"x": "2022-01-01T23:50:00Z", "y": 65}
         ]
                   },
         {
           "value": "IAT",
           "label": "IAT",
           "data": 		[
                {"x": "2022-01-02T00:00:00+01:00", "y": 60},
      {"x": "2022-01-02T00:01:00+01:00", "y": 55},
      {"x": "2022-01-02T00:02:00+01:00", "y": 65},
      {"x": "2022-01-02T00:03:00+01:00", "y": 70},
      {"x": "2022-01-02T00:04:00+01:00", "y": 80},
      {"x": "2022-01-02T00:05:00+01:00", "y": 90},
      {"x": "2022-01-02T00:06:00+01:00", "y": 70},
      {"x": "2022-01-02T00:07:00+01:00", "y": 60},
      {"x": "2022-01-02T00:08:00+01:00", "y": 50},
      {"x": "2022-01-02T00:09:00+01:00", "y": 40},
      {"x": "2022-01-02T00:11:00+01:00", "y": 55},
      {"x": "2022-01-02T00:12:00+01:00", "y": 45},
      {"x": "2022-01-02T00:13:00+01:00", "y": 60},
      {"x": "2022-01-02T00:14:00+01:00", "y": 75},
      {"x": "2022-01-02T00:15:00+01:00", "y": 80},
      {"x": "2022-01-02T00:16:00+01:00", "y": 70},
      {"x": "2022-01-02T00:17:00+01:00", "y": 65},
      {"x": "2022-01-02T00:18:00+01:00", "y": 55},
      {"x": "2022-01-02T00:19:00+01:00", "y": 50},
      {"x": "2022-01-02T00:20:00+01:00", "y": 45},
      {"x": "2022-01-02T00:21:00+01:00", "y": 60},
      {"x": "2022-01-02T00:22:00+01:00", "y": 55},
      {"x": "2022-01-02T00:23:00+01:00", "y": 65}
         ]
                   }
               ]
           }
   }
 ]
 
 function toggleData(divID, button, value){
  const visibilityData = myChart.isDatasetVisible(value);
  if(visibilityData === true){
    myChart.hide(value);
    document.querySelector(`#${divID} #${button}`).style.backgroundColor = 'black';
  }
  if(visibilityData === false){
    myChart.show(value);
    document.querySelector(`#${divID} #${button}`).style.backgroundColor = myChart.data.datasets[value].backgroundColor;
  }
}


var chartOptionsDark = {
  pointRadius: 0,
  interaction: {
    intersect: false,
    mode: 'x',
},
scales: {
  x: {
    ticks: {color: '#81C8BD'},
    grid: {color: '#81C8BD'},
    position: 'top',
    type: 'time',
time: {
unit: 'minute',
displayFormats: {
  hour:'HH:mm:ss.SSS',
},}
  },
  y1: {
    ticks: {color: '#81C8BD'},
    grid: {color: '#81C8BD'},
      stack: 'demo'
  },
  y2: {
    ticks: {color: '#81C8BD'},
    grid: {color: '#81C8BD'},
      stack: 'demo'
  },
  y3: {
    ticks: {color: '#81C8BD'},
    grid: {color: '#81C8BD'},
      stack: 'demo'
  },
  y4: {
    ticks: {color: '#81C8BD'},
    grid: {color: '#81C8BD'},
      stack: 'demo'
  },
},
    maintainAspectRatio: false, // disable aspect ratio
    plugins: {
      legend:{
        display: false,
        position: 'left',
        labels: {
          color: 'white'
        },
      },
    },
  
};


var chartOptions = {
  pointRadius: 0,
  interaction: {
    intersect: false,
    mode: 'x',
},
scales: {
  x: {
    ticks: {color: 'white'},
    grid: {color: 'white'},
    position: 'top',
    type: 'time',
time: {
unit: 'minute',
displayFormats: {
  hour:'HH:mm:ss.SSS',
  'minute': 'HH:mm',
},
timezone: 'Europe/Amsterdam'}
  },
  y1: {
    ticks: {color: 'white'},
    grid: {color: 'white'},
      stack: 'demo'
  },
  y2: {
    ticks: {color: 'white'},
    grid: {color: 'white'},
      stack: 'demo'
  },
  y3: {
    ticks: {color: 'white'},
    grid: {color: 'white'},
      stack: 'demo'
  },
  y4: {
    ticks: {color: 'white'},
    grid: {color: 'white'},
      stack: 'demo'
  },
},
    maintainAspectRatio: false, // disable aspect ratio
    plugins: {
      legend:{
        display: false,
        position: 'left',
        labels: {
          color: 'white'
        },
      },
    },
  
};

var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
      type: 'line',
      options: chartOptions

    });

    
const chartContainer = document.getElementById('dataGraph');
//if(myChart.data.datasets[0].data.length > 3){
  chartContainer.style.width = '2000px';
  myChart.resize(2000, null);
  
//}


    function getRandomColor() {
      const letters = '0123456789ABCDEF';
      let color = '#';
      for (let i = 0; i < 6; i++) {
        color += letters[Math.floor(Math.random() * 16)];
      }
      return color;
    }
    

function checkID(selectID){
  if(selectID === 'y1'){return document.getElementById("y1Legend");}
  if(selectID === 'y2'){return document.getElementById("y2Legend");}
  if(selectID === 'y3'){return document.getElementById("y3Legend");}
  if(selectID === 'y4'){return document.getElementById("y4Legend");}
}

function updateGraph(selectID) {
    var selectBox = document.getElementById(selectID);
    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
    var divID = checkID(selectID);
    var buttonCount = 0;


    if(selectedValue === 'Empty'){
    myChart.data.datasets = myChart.data.datasets.filter(dataset => {
      return dataset.yAxisID !== selectID;
    });
    
      while (divID.firstChild) {
        divID.removeChild(divID.firstChild);
      }
    
    myChart.update();
  }else{

   
    
      while (divID.firstChild) {
        divID.removeChild(divID.firstChild);
      }
    
    

    myChart.data.datasets = myChart.data.datasets.filter(dataset => {
      return dataset.yAxisID !== selectID;
    });
    
    
        var selectedData = graphData.find(function(item) {
            return item.value === selectedValue;
        });
        
        if (selectedData) {
            
          selectedData.data.datasets.forEach(function(dataset) {
            var color = getRandomColor();
            var newDataset = Object.assign({}, dataset); // Create a new object to avoid modifying the original
            newDataset.yAxisID = selectID;
            newDataset.backgroundColor = color;
            newDataset.borderColor = color;

            var myButton = document.createElement("button");
            myButton.id = "myButton" + buttonCount; // Add the current buttonCount to the ID
            buttonCount++; // Increment the buttonCount for the next button
            myButton.style.backgroundColor = 'black';
            myButton.style.color = 'white';
            
            myButton.innerHTML = newDataset.label;
            divID.appendChild(myButton);

            var value = myChart.data.datasets.length;
            myButton.onclick = function() {
              toggleData(divID.id, myButton.id, value);
            };

            myChart.data.datasets.push(newDataset);
            //console.log(myChart.data.datasets.length-1);

            if(newDataset.value === "CLT" || newDataset.value === "OILT"){
              displayMostRecentData(newDataset);
            }
            
          }); 
             
          //document.getElementById('0').innerText = myChart.data.datasets[0].label;
         
          if(dark === false){myChart.options = chartOptions;} else{myChart.options = chartOptionsDark;}
            // Deselect all datasets
            myChart.data.datasets.forEach(function(dataset) {
                dataset.hidden = true;
            });
            myChart.update();
        }
  }

};

function displayMostRecentData(newDataset) {
  var mostRecent = newDataset.data[newDataset.data.length-1];
  
  const y = mostRecent.y;
  var x = mostRecent.x;
  console.log(x);
      x = formatDate(x);
      
  if(newDataset.value === "OILT"){
    const displayElement = document.getElementById("dataOILT"); // assuming there's an HTML element with an ID "most-recent-data"
    displayElement.innerHTML = `Time: ${x}, Value: ${y}`; // display the data in the element
  }
  if(newDataset.value === "CLT"){
    const displayElement = document.getElementById("dataCLT"); // assuming there's an HTML element with an ID "most-recent-data"
    displayElement.innerHTML = `Time: ${x}, Value: ${y}`; // display the data in the element
  }
  
}

function formatDate(dateTimeStr) {
  const date = new Date(dateTimeStr);
  console.log(date);
  const hours = String(date.getUTCHours()).padStart(2, '0');
  const minutes = String(date.getUTCMinutes()).padStart(2, '0');
  const seconds = String(date.getUTCSeconds()).padStart(2, '0');
  const milliseconds = String(date.getUTCMilliseconds()).padStart(3, '0');
  return `${hours}:${minutes}:${seconds}:${milliseconds}`;
}


    // Loop through each option and add it to the dropdown menu
    $.each(graphData, function(index, option) {
        $('#y1').append($('<option>', {
            value: option.value,
            text: option.label
        }));
    });
    $.each(graphData, function(index, option) {
        $('#y2').append($('<option>', {
            value: option.value,
            text: option.label
        }));
    });
    $.each(graphData, function(index, option) {
        $('#y3').append($('<option>', {
            value: option.value,
            text: option.label
        }));
    });
    $.each(graphData, function(index, option) {
        $('#y4').append($('<option>', {
            value: option.value,
            text: option.label
        }));
    });

const checkbox = document.getElementById('dark-mode-checkbox');
const body = document.body;

checkbox.addEventListener('change', function() {
  if (this.checked) {
    body.classList.add('dark-mode');
    chartDiv.classList.add('dataGraph-dark');

    dark = true;
    myChart.options = chartOptionsDark;
    myChart.update();
  } else {
    body.classList.remove('dark-mode');
    chartDiv.classList.remove('dataGraph-dark');

    dark = false;
    myChart.options = chartOptions;
    myChart.update();
  }
});





/*
document.getElementById('0').style.backgroundColor = 'black';
document.getElementById('0').innerText = myChart.data.datasets[0].label;

document.getElementById('1').style.backgroundColor = 'black';
document.getElementById('1').innerText = myChart.data.datasets[1].label;

document.getElementById('2').style.backgroundColor = 'black';
document.getElementById('2').innerText = myChart.data.datasets[2].label;

document.getElementById('3').style.backgroundColor = 'black';
document.getElementById('3').innerText = myChart.data.datasets[3].label;

document.getElementById('4').style.backgroundColor = 'black';
document.getElementById('4').innerText = myChart.data.datasets[4].label;
*/