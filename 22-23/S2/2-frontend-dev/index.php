<!DOCTYPE html>

<html>

<head>

    <title>Login</title>
    <!-- <link rel="stylesheet" type="text/css" href="app.css"> -->

<style>
        body
        {
            background:linear-gradient(to bottom, #148484, #4f9693);
            background-repeat: no-repeat;
            color: rgb(0, 0, 0);
            font-family: Arial, sans-serif;
            height: 100vh;
            width: 100vw;
        }

        h1
        {
            color: aliceblue;
            font-size: 36px;
            text-align: center;
            margin-top: 5%;
            margin-bottom: 2%;
        }

        button 
        {
            background-color: #008ae6;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
            
        }

        button:hover 
        {
            background-color: #005c9c;
            transform: scale(1.2);
        }

        button:focus, button:active 
        {
            transform: scale(1); 
        }


        form 
        {
            margin: 0 auto;
            max-width: 400px;
            text-align: center;
            margin-bottom: 50px;
            padding: 20px;
            background-color: #bcdcda;
            border-radius: 10px;
            box-shadow: 0px 0px 15px 0px rgba(0,0,0,0.75);
        }

        select 
        {
            font-size: 18px;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            background-color: #008ae6;
            color: white;
        }

        input[type=submit] 
        {
            background-color: #008ae6;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        input[type=submit]:hover 
        {
            background-color: #005c9c;
            transform: scale(1.2);
        }
        .center 
        {
            text-align: center;
        }

        input[type=submit]:focus, input[type=submit]:active 
        {
            transform: scale(1); 
        }

        .img1
        {
            top:0;
            left:0;
            position: fixed;
            width: 10%;
            height: 100%;
            background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 1));
            object-fit: cover;

        }

        .img2
        {
            top:0;
            right:0;
            position: fixed;
            width: 10%;
            height: 100%;
            background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0), rgba(255, 255, 255, 1));
            object-fit: cover;

        }

        .img3
        {
            top:3%;
            left:12%;
            position: fixed;
            max-width: 20%;
            height: auto;
            object-fit: cover;
        }

        .topright
        {
            position: fixed;
            top: 0;
            right: 10%;
        }
        
        .right
        {
            right:17%;
        }

        .curvy-line
        {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 100%;
            z-index: -1;
            background:linear-gradient(to bottom, #009999, #00b3b3);
            border-radius: 50% 10% 50% 10%;
            transform: skewY(-15deg);
        }

    </style>

</head>

<body>
<img src="pictures\car.jpeg" alt="A car" class="img1">
<img src="pictures\car_2.jpeg" alt="A car" class="img2">

<a href="https://regterschotracing.com/" target="_blank">
        <img src="pictures\reg_race.png" alt="company link" class="img3">
    </a>

    <h1></h1>
    <!--some space between-->
    <p style="padding-bottom: 55px;">

     <form action="backend/login.php" method="post">

        <?php if (isset($_GET['error'])) { ?>

            <p class="error"><?php echo $_GET['error']; ?></p>

        <?php } ?>

        <label>User Name</label>

        <input type="text" name="uname" placeholder="User Name"><br>

        <label>Password</label>

        <input type="password" name="password" placeholder="Password"><br> 

        <button type="submit">Login</button>

     </form>

     <!--some space between-->
     <p style="padding-bottom: 10px;">

<!-- Slideshow container -->
<div class="slideshow-container">

<!-- Full-width images with number and caption text -->
<div class="mySlides fade">
  
    <center><img src="pictures/img1.jpg" style="width:700px;height:400px;"></center> <!--style="width:500px;height:600px;"--> <!--- style="width:50%"-->
 
  </div>

  <div class="mySlides fade">

    <center><img src="pictures/img2.jpg" style="width:700px;height:400px;"></center>
 
  </div>

  <div class="mySlides fade">
 
    <center><img src="pictures/img3.jpg" style="width:700px;height:400px;"></center>
 
  </div>

  <div class="mySlides fade">

    <center><img src="pictures/img4.jpg" style="width:700px;height:400px;"></center>
 
  </div>

  </div>

<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every X amount of Milliseconds
}
</script>

<div class="curvy-line"></div>

</body>

</html>