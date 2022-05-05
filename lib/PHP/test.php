<?php

$sql="SELECT
  wpp.ID,
  wppm.meta_key AS FIELD,
  wppm.meta_value AS VALUE,
  wppm.*
FROM wp_posts AS wpp
  LEFT JOIN wp_postmeta AS wppm
    ON wpp.ID = wppm.post_id
WHERE wpp.post_type = 'product'
      AND (wppm.meta_key = '_regular_price'
      OR wppm.meta_key = '_sale_price'
      OR wppm.meta_key = '_price'    
      OR wppm.meta_key = '_product_attributes')
ORDER BY wpp.ID ASC, FIELD ASC, wppm.meta_id DESC;";






















$sql = "
SELECT 
    p.ID,p.post_content,p.post_title,p.post_excerpt,
   am.meta_value,
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


?>