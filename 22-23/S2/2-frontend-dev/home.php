<?php 

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['username'])) {

 ?>


<!DOCTYPE html>
<html>
<head>

    <title>Home</title>

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

        .links-container 
        {
            position: fixed;
            bottom: 2%;
            right: 12%;
            display: flex;
            flex-direction: column;
            align-items: flex-end;
        }

        .links-container a 
        {
            margin-bottom: 3px;
            padding: 5px;
            color: #fff;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .links-container img {
            width: 45px;
            height: 45px;
            object-fit: cover;
        }

        .links-container a:hover 
        {
            background-color: #148484;
            transform: scale(1.2);
        }

        .links-container a:focus, a:active 
        {
            transform: scale(1); 
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
    

     <h1>Hello, <?php echo $_SESSION['username']; ?></h1>
     
    <form class="topright" method="POST" action="backend/logout.php" >   
     <button> Logout </button>
    </form>

    <form class="topright right" method="POST" action="admin/admin.php">   
     <button > Admin </button>
    </form>

     
     <form method="POST" action="data.php">
     <p class="center">Please select data event:</p>
        <select name="event">
            <option value="event1">Event 1</option>
            <option value="event2">Event 2</option>
            <option value="event3">Event 3</option>
        </select>
        <br>
        <input type="submit" value="Submit">
    </form>

    <div class="links-container">
        <a href="https://www.instagram.com/regterschotracing/" target="_blank">
            <img src="pictures/instagram.png" alt ="instagram link">
        </a>
        <a href="https://www.tiktok.com/@regterschotracing" target="_blank">
            <img src="pictures/tiktok.png" alt ="tiktok link">
        </a>
        <a href="https://www.facebook.com/RegterschotRacing" target="_blank">
            <img src="pictures/facebook.png" alt ="facebook link">
        </a>
    </div>

    <div class="curvy-line"></div>
    
</body>
</html>

<?php 
}else{

     header("Location: index.php");
     exit();
}
 ?>