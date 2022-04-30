<?php 
     function PDOConection()
    {
        $username = "roejewel_aqewt";
        $password = "h#6zr(LJzp9K";

        $dns = 'mysql:host=localhost;dbname=roejewel_dbjo';

        try{
            $con=new PDO($dns,$username,$password); 
        }catch(PDOException $e)
        {
            echo "error";
        }
    }
    
    function DBConection()
    {
        $username = "roejewel_aqewt";
        $password = "h#6zr(LJzp9K";
        $dbname ='roejewel_dbjo';
        $servername='localhost';
        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    }
    DBConection();







    
// // ** MySQL settings - You can get this info from your web host ** //
// /** The name of the database for WordPress */
// define( 'DB_NAME', 'roejewel_dbjo' );

// /** MySQL database username */
// define( 'DB_USER', 'roejewel_aqewt' );

// /** MySQL database password */
// define( 'DB_PASSWORD', 'h#6zr(LJzp9K' );

// /** MySQL hostname */
// define( 'DB_HOST', 'localhost' );

// /** Database charset to use in creating database tables. */
// define( 'DB_CHARSET', 'utf8mb4' );

// /** The database collate type. Don't change this if in doubt. */
// define( 'DB_COLLATE', '' );


?>