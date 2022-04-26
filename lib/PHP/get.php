<?php
     require_once('db.php');
     $query='SELECT post_name FROM roejewel_dbjo';
     $stm=$db->prepare($query);
     $stm->execute();
     $row=$stm->fetch(PDO::FETCH_ASSOC);
?>