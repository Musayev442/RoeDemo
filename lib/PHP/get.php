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
   
   $sql2="SELECT 
   p.ID,
   am.meta_value
FROM
   wp_posts p
LEFT JOIN
   wp_postmeta pm ON 
       pm.post_id = p.ID AND
       pm.meta_key = '_thumbnail_id'
LEFT JOIN
   wp_postmeta am ON
       am.post_id = pm.meta_value AND
       am.meta_key = '_wp_attached_file'
WHERE
   p.post_type = 'product' AND
   p.post_status = 'publish'";
   
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