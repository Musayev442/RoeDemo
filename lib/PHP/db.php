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

?>