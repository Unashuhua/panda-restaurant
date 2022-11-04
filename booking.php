<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>booking</title>
    <style>
        input{
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type=submit] {
            width: 100%;
            margin-top: 20px;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        div {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
        img{
            width:100%
        }
        .API{
            text-align: center;
        }
        .update{
            text-align: right;
            font-style: italic;
            font-size: 13px;
        }
    </style>
</head>
<body>
    <header>
        <nav class="onpicture">
            <ul>
                <li><a href="index.html" class="tm-nav-link active">Home</a></li>
                <li><a href="booking.php">Booking</a></li>
                <li><a href="Contact.html">Contact</a></li>
            </ul>
        </nav>
        <img id="background" src="./image/food.jpg" alt="background">
    </header>
    <main>
        <div>
            <h2>Booking Details</h2>
            <form method="POST">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="firstname" placeholder="Your name..">

                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lastname" placeholder="Your last name..">

                <label for="phone">Phone Number</label>
                <input type="number" id="phone" name="phone" placeholder="0892056033">

                <label for="bookingtime">Booking Time</label>
                <input type="datetime-local" id="bookingtime" name="bookingtime" placeholder="YYYY-MM-DD HH:MI:SS..">
                
                <input type="submit" value="Submit" name="submit">
            </form>
        </div>
        <div id="formdetail">
            <?php
                // connect and search database shop
                $server = 'localhost';
                $username = 'root';
                $password = '';
                $dataname = 'Restaurant';
                $connection = mysqli_connect("$server","$username","$password", $dataname);
                // check connection
                if(!$connection)
                {
                    die("connection failed:".mysqli_connect_error());
                }
            // record search data
                if(isset($_POST['submit']))
                {
                        $first_name = $_POST["firstname"];
                        $family_name = $_POST["lastname"];
                        $phonenumber = $_POST["phone"];
                        $reserved_time = $_POST["bookingtime"];
                }
                $booking_day = date('Y-m-d');
            // check the empty
                if(!empty ($first_name) and !empty ($family_name) and !empty ($reserved_time) and strlen($phonenumber) == 10){
                    $booking = "INSERT INTO booking (first_name , family_name, phonenumber, reserved_time, booking_day) VALUES ('{$first_name}', '$family_name', '$phonenumber', '$reserved_time', '$booking_day')"; 
                }
                else{
                    echo  "The content of the form cannot be empty & the number must be 10 digits!!";
                }
                if ($connection->query($booking) == TRUE) 
                    {
                        echo "New booking is reserved, see you soon!";
                    }
                else{
                        echo "Error: " . $booking . "<br>" . $connection->error;
                }
            ?>
        </div>
        <div id="note">
            <?php
                function dateDifference($start, $yesterday){
                    $diff = strtotime($start) - strtotime($yesterday);
                    return ceil(abs($diff / 86400));
                }
                $start = "2021-12-08";
                $start_index = 646;
                $yesterday = date("Y-m-d", strtotime(date("Y-m-d"))-86400);
                $dateDiff = dateDifference($start, $yesterday);
                $i = $start_index + $dateDiff;
                $response = file_get_contents('https://services1.arcgis.com/eNO7HHeQ3rUcBllm/arcgis/rest/services/CovidStatisticsProfileHPSCIrelandOpenData/FeatureServer/0/query?where=1%3D1&outFields=*&outSR=4326&f=json');
                $arr = json_decode($response, true);
                $daily_infect = $arr["features"][$i]["attributes"]["ConfirmedCovidCases"];
            ?>
            <h2>Important Note</h2>
            <h3 class="API">Confirmed Covid Cases: <?php echo $daily_infect; ?></h3>
            <img src="./image/mask.webp" alt="mask">
            <p>Dear guests:</p>
            <p>please make sure to bring a mask to enter the restaurant. We will check your vaccine certificate. Thank you for understanding.</p> 
            <p class="update">Updated Time:<?php echo $yesterday; ?></p>
            
        </div>
    </main>
    <footer class="tm-footer text-center">
        <p>Copyright &copy; 2021 SpicyPanda
            | Design: Shuhua Lin</p>
    </footer>

</body>

</html>
