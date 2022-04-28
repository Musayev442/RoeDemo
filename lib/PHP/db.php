<?php 
     $dns="mysql:host=localhost;dbname=roejewel_dbjo;";
     $username="roejewel_aqewt";
     $password="roejewelry";

     try
     {
          $db=new PDO($dns,$username,$password);
          //echo 'conected';
     }catch(PDOException $e)
     {
          $error=$e->getMessage();
          echo $error;
     }
     echo "<img src=\"".$row["guid"]."\"><br>";
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