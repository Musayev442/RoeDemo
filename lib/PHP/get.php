<?php
     
   

   function PDOQuery()
   {
        require_once('db.php');
        $sql = "SELECT * FROM `wp_posts` WHERE `post_type` LIKE 'product'";
        $stm=$conn->prepare($sql);
        $stm->execute();
        $row=$stm->fetch(PDO::FETCH_ASSOC);
        echo json_encode($row);
   }
   
   
   
   function Query()
   {
        require_once('db.php');
       $sql = "SELECT ID FROM `wp_posts` WHERE `post_type` LIKE 'product'";
       $result = $conn->query($sql);

        if ($result->num_rows > 0) 
        {
  
            while($row = $result->fetch_assoc()) 
            {
                echo "id: " . $row["ID"]."<br>";
            }
        } else {
                    echo "0 results";
                }
        $conn->close();
   }
   
   Query();



   
?>