<?php
   define('DB_SERVER', 'localhost');
   // The DB credentials should not be be stored in source control, but they are include here to provide a complete example.  
   define('DB_USERNAME', 'root');
   define('DB_PASSWORD', '');
   define('DB_DATABASE', 'sql_injection');
   $db = new mysqli(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
   $db->set_charset("utf8");
?>