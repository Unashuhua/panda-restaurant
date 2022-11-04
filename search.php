<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Menue</title>
    <style>
        h2{
            background-color: rgb(58, 48, 48);
            font-style: italic;
            color: white;
            text-align:center;
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
    <h2>Menu</h2>
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
        
        // get the post of forme
        if(isset($_POST['submit-search']))
        {
            $search = $_POST["search"];
            $query = "SELECT * FROM menue WHERE dish_name LIKE '%$search%' ";
            $result = mysqli_query($connection, $query);

            // check the user don't use empty search
            if(!empty ($search))
            {
                print('<h3>here are results related:</h3>');
                while($row = mysqli_fetch_array($result))
                {
                    print('<img src='.$row[2].' alt='.$row[1].' width="100%">');
                    print('<br />');
                    print($row[1]. '$' .$row[4]);
                    print('<br />');
                    print('<br />');
                    print($row[3]);
                    print('<h4>=====================</h4>');
                }
                print('<br />');
            }
            else{
                print('<h3 style="color:red">you have to enter somthing!!</h3>');
            }
        }
    ?>
</body>
</html>