<!-- <?php
//Server details
$dbServername = "beerbinder.uk.mysql";
$dbUsername = "beerbinder_uk_database";
$dbPassword = "wGR34G9UU";
$dbName = "beerbinder_uk_database";
//Establish connection
$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);
//Check the connection was successful
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?> -->

        <?php


        try {

        $pdo = new PDO('mysql:host=beerbinder.uk.mysql; dbname=beerbinder_uk_database' , 'beerbinder_uk_database', 'wGR34G9UU'); 

        } catch (PDOException $e) {

            die ($e->getMessage()); 
        }  

        ?>